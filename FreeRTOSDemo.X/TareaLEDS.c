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
#include "TareaLEDS.h"

// Includes del Kernel.
#include "FreeRTOS.h"
#include "semphr.h"
#include "task.h"

void InitLeds()
{
    // PORTB RB12, RB13, RB14, RB15 como salidas (0 = salida)
    TRISB &= ~0xF000;
    // PORTB RB12, RB13, RB14, RB15 apagados (1 = apagado)
    PORTB |= 0xF000;
}
void MostrarOri(void *pvParameters)
{
    extern int orientacion;
    extern SemaphoreHandle_t sem_leds;

    while (1)
    {
        if (xSemaphoreTake(sem_leds, portMAX_DELAY) == pdTRUE)
        {
            PORTB |= 0xF000;                 // Apago todos los leds
            PORTB &= ~(1 << 12 + orientacion); // Enciendo el led correspondiente
        }
    }
}
