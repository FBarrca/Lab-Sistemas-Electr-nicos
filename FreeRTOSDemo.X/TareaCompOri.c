/*
 * File:   TareaAcel.c
 * Author: franb
 *
 * Created on November 18, 2022, 5:59 PM
 */

#include <p33FJ128MC802.h>
#include <stdint.h>
#include <stdio.h>

#include "Interrupciones.h"
#include "DriverPicTrainer/adc.h"
#include "TareaCompOri.h"
// Includes del Kernel.
#include "FreeRTOS.h"
#include "semphr.h"
#include "task.h"

enum
{
    LANDSCAPE,
    PORTRAIT,
    LANDSCAPE_FLIPPED,
    PORTRAIT_FLIPPED,
};

void InitOrientacion()
{
}
void ComputarOri(void *pvParameters)
{

    extern float angulo;
    extern int orientacion;
    extern SemaphoreHandle_t sem_serie;
    extern SemaphoreHandle_t sem_leds;
    extern SemaphoreHandle_t sem_ori;

    float angulo_copia;
    int orientacion_act;
    int orientacion_ant = -1; // Para mandar el mensaje con el primer valor
    while (1)
    {
        if (xSemaphoreTake(sem_ori, portMAX_DELAY) == pdTRUE)
        {
            // Copiamos el valor de la variable compartida angulo. En la zona segura.
            vTaskSuspendAll();
            angulo_copia = angulo;
            xTaskResumeAll();

            // We make sure the angle is between 0 and 360 degrees.
            while (angulo_copia < 0)
                angulo_copia += 360;
            while (angulo_copia >= 360)
                angulo_copia -= 360;

            switch ((int)angulo_copia)
            {
            case 0 ... 45:
                orientacion_act = LANDSCAPE;
                break;
            case 46 ... 135:
                orientacion_act = PORTRAIT;
                break;
            case 136 ... 225:
                orientacion_act = LANDSCAPE_FLIPPED;
                break;
            case 226 ... 315:
                orientacion_act = PORTRAIT_FLIPPED;
                break;
            case 316 ... 360:
                orientacion_act = LANDSCAPE;
                break;
            default:
                orientacion_act = LANDSCAPE;
                break;
            }
            if (orientacion_act != orientacion_ant)
            {
                // Copiamos el valor a la variable compartida orientacion. En la zona segura.
                vTaskSuspendAll();
                orientacion = orientacion_act;
                xTaskResumeAll();

                // Activamos los semáforos de las tareas que necesitan la orientación.
                vTaskSuspendAll();
                xSemaphoreGive(sem_serie);
                xSemaphoreGive(sem_leds);
                xTaskResumeAll();
            }
            orientacion_ant = orientacion_act;
        }
    }
}
