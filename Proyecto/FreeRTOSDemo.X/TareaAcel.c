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
#define PIN_BOTTON 2

#define TOLERANCIA 5

void InitAcel()
{
    inicializarADCPolling(3); // Inicializo el ADC AN0 y AN1

    TRISB |= (1 << PIN_BOTTON);
    PORTB &= ~(1 << PIN_BOTTON);
}

void LeerAcel(void *pvParameters)
{
    extern float angulo;
    extern SemaphoreHandle_t sem_ori;
    // Internal variables
    //Guardamos el angulo act y los dos anteriores
    float angulo_act;
    float angulo_ant = 0;
    float angulo_ant_ant =0;
    // lectura en cada eje en escala 1024 y pasada a aceleraciones
    unsigned int lectura_y, lectura_x;
    float l_y, l_x;
    //Detección de pulsador
    float puls_act, puls_ant;
    puls_ant = 1;
    
    lectura_y = leerADCPolling(1);
    lectura_x = leerADCPolling(0);
    l_y = (lectura_y - 512.0) / 512.0 * 10;
    l_x = (lectura_x - 512.0) / 512.0 * 10;

    float offset_angulo = (atan2(-l_x, -l_y) * 180 / PI);
    float angulo_calc;
    while (1)
    {
        lectura_y = leerADCPolling(1);
        lectura_x = leerADCPolling(0);

        l_y = (lectura_y - 512.0) / 512.0 * 10;
        l_x = (lectura_x - 512.0) / 512.0 * 10;

        if ((l_x * l_x + l_y * l_y) < 100 ) // si el módulo es muy grande es que hay aceleraciones externas (filtramos)
        {
            
            angulo_calc = (atan2(-l_x, -l_y) * 180 / PI);
            angulo_act = angulo_calc - offset_angulo;
            while (angulo_act =< 0)
                angulo_act += 360;
            while (angulo_act > 360)
                angulo_act -= 360;

            puls_act = PORTB & (1 << 2);
            if (puls_act != puls_ant && puls_act == 0)
            {
                offset_angulo = angulo_calc;
            }
            puls_ant = puls_act;

            //Si se acaba de estabilizar en un valor
            if (fabs(angulo_act - angulo_ant) <= TOLERANCIA && fabs(angulo_ant_ant - angulo_ant) >= TOLERANCIA)
            {
                vTaskSuspendAll(); // Suspend task scheduling
                angulo = angulo_act;
                xTaskResumeAll();
                vTaskDelay(10);
                xSemaphoreGive(sem_ori);
            }
            angulo_ant_ant = angulo_ant;
            angulo_ant = angulo_act;
                
        }
    }
}
