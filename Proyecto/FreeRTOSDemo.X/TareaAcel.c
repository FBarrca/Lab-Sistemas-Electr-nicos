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
#include "TareaAcel.h"

// Includes del Kernel.
#include "FreeRTOS.h"
#include "semphr.h"
#include "task.h"

#include <math.h>

#define PI 3.14159

#define TOLERANCIA 5
void InitAcel()
{
    inicializarADCPolling(3); // Inicializo el ADC AN0 y AN1
}
void LeerAcel(void *pvParameters)
{
    extern float angulo;
    extern SemaphoreHandle_t sem_ori;
    // extern SemaphoreHandle_t sem_serie;
    // Internal variables
    float angulo_act;
    float angulo_ant = 0;
    unsigned int lectura_y, lectura_x;
    float l_y, l_x;

    while (1)
    {
        lectura_y = leerADCPolling(1);
        lectura_x = leerADCPolling(0);

        l_y = (lectura_y - 512.0) / 512.0 * 10;
        l_x = (lectura_x - 512.0) / 512.0 * 10;

        angulo_act = atan2(-l_x, -l_y) * 180 / PI;

        if (fabs(angulo_act - angulo_ant) >= TOLERANCIA)
        {

            vTaskSuspendAll(); // Suspend task scheduling
            angulo = angulo_act;
            xTaskResumeAll();

            vTaskDelay(10);
            xSemaphoreGive(sem_ori);
            angulo_ant = angulo_act;
        }
    }
}
