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

void InitAcel() {
    inicializarADCPolling(3); // Inicializo el ADC AN0 y AN1

    TRISB |= (1 << PIN_BOTTON);
    PORTB &= ~(1 << PIN_BOTTON);
}

void LeerAcel(void *pvParameters) {
    extern float angulo;
    extern SemaphoreHandle_t sem_ori;
    // extern SemaphoreHandle_t sem_serie;
    // Internal variables
    float angulo_act;
    float angulo_ant = 0;
    unsigned int lectura_y, lectura_x;
    float l_y, l_x;
    float puls_act, puls_ant;
    puls_ant = 1;
    
    lectura_y = leerADCPolling(1);
    lectura_x = leerADCPolling(0);
    l_y = (lectura_y - 512.0) / 512.0 * 10;
    l_x = (lectura_x - 512.0) / 512.0 * 10;
    
    float offset_angulo = (atan2(-l_x, -l_y) * 180 / PI);
    float angulo_calc;
    while (1) {
        lectura_y = leerADCPolling(1);
        lectura_x = leerADCPolling(0);

        l_y = (lectura_y - 512.0) / 512.0 * 10;
        l_x = (lectura_x - 512.0) / 512.0 * 10;

        if ((l_x * l_x + l_y * l_y) < 100) {

            angulo_calc = (atan2(-l_x, -l_y) * 180 / PI);
            angulo_act = angulo_calc - offset_angulo;
            while (angulo_act < 0)
                angulo_act += 360;
            while (angulo_act >= 360)
                angulo_act -= 360;


            puls_act = PORTB & (1 << 2);
            if (puls_act != puls_ant && puls_act == 0) {
                offset_angulo = angulo_calc;
            }
            puls_ant = puls_act;

            if (fabs(angulo_act - angulo_ant) >= TOLERANCIA) {

                vTaskSuspendAll(); // Suspend task scheduling
                angulo = angulo_act;
                xTaskResumeAll();

                vTaskDelay(10);
                xSemaphoreGive(sem_ori);
                angulo_ant = angulo_act;
            }
        }
    }
}
