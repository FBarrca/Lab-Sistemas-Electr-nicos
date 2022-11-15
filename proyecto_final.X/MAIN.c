/*
 * File:   MAIN.c
 * Author: stic
 *
 * Created on 20 de septiembre de 2022, 11:34

 */
#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <math.h>
#include "uart.h"
#include "config.h"
#include "interpolar_sensor.h"
#include "pwm.h"
#include "idle.h"
#include "adc.h"

#define PI 3.14159

int main(void)
{

    inicializarReloj();
    TRISB &= 0x0FFF;
    // Inicializaciones
    inicializarUART(115200);
    inicializarTareaIdle(10);
    inicializarADCPolling(3);

    unsigned int lectura_y, lectura_x;
    float l_y, l_x, angulo;
    unsigned int lux = 0;
    unsigned int t = 0;
    unsigned int pwm;
    while (1)
    {


        lectura_y = leerADCPolling(1);
        lectura_x = leerADCPolling(0);

        l_y = (lectura_y-512.0)/512.0*10;
        l_x = (lectura_x-512.0)/512.0*10;
        
        
        angulo = atan2(-l_x, -l_y)*180/PI;
        

        
        sendData(angulo, l_x);
        
        
        
        
        tareaIdle();
        t++;
        
//        if(t>3500){return 0;}
    }
        return 0;
}

void sendData(float l_y, float l_x)
{
    char send_data[20];
    sprintf(send_data, " %f;\n", l_y);
    putsUART(send_data);
}


