/*
 * File:   MAIN.c
 * Author: stic
 *
 * Created on 20 de septiembre de 2022, 11:34

 */
#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include "uart.h"
#include "config.h"
#include "interpolar_sensor.h"
#include "pwm.h"
#include "idle.h"
#include "adc.h"

int main(void)
{

    char send_data[9];
    inicializarReloj();
    TRISB &= 0x0FFF;
    // Inicializaciones
    inicializarUART(115200);
    inicializarTareaIdle(100);
    inicializarADCPolling(0x20);
    inicializarPWM((1 << 10), 1000);
    activarPWM((1 << 10));

    unsigned int lectura;
    unsigned int lux = 0;
    unsigned int t = 0;
    unsigned int pwm;
    while (1)
    {

        // Tarea 1
        pwm = ControlBulb(t);
        // Control de la intensidad de la bombilla
        // Tarea 2
        lectura = leerADCPolling(5);
        lux = interpolarSensor(lectura);
        // Medida de la intensidad luminosa
        // Tarea 3
        // Envío de datos por UART
        sendData(lux);
        tareaIdle();
        t++;
    }
    return 0;
}

void sendData(unsigned int lux, unsigned int pwm)
{
    char send_data[20];
    sprintf(send_data, " %d, %d;\n", pwm, lux);
    putsUART(send_data);
}

int ControlBulb(unsigned int t)
{
    if (t >= 1000 && t <= 3000)
    {
        setDcPWM((1 << 10), 100);
        return 100;
    }
    else if (t < 1000)
    {
        setDcPWM((1 << 10), 50);
        return 50;
    }
    else if (t > 3000)
    {
        setDcPWM((1 << 10), 0);
        return 0;
    }
}
