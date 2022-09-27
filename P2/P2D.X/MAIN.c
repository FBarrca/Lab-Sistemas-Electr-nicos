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

#define T_S 10 // decimas de milisegundo
#define KP 0.17f
#define KI 0.02f

int main(void)
{

    char send_data[9];
    inicializarReloj();
    TRISB &= 0x0FFF;
    // Inicializaciones
    inicializarUART(115200);
    inicializarTareaIdle(10);
    inicializarADCPolling(0x20);
    inicializarPWM((1 << 10), 1000);
    activarPWM((1 << 10));

    unsigned int lectura;
    unsigned int lux = 0;
    unsigned int t = 0;
    unsigned int pwm;
    while (1)
    { // Tarea 2
        lectura = leerADCPolling(5);
        lux = interpolarSensor(lectura);
        // Medida de la intensidad luminosa
        // Tarea 1
        pwm = ControlBulb(lux,500);
        // Control de la intensidad de la bombilla
       
        // Tarea 3
        // Envío de datos por UART
//        if(t %10 ==0){
            sendData(lux, pwm);
//        }
        
        tareaIdle();
        t++;
        
//        if(t>3500){return 0;}
    }
        return 0;
}

void sendData(unsigned int lux, unsigned int pwm)
{
    char send_data[25];
    sprintf(send_data, " %d, %d;\n", pwm, lux);
    putsUART(send_data);
}

int ControlBulb(unsigned int salida, unsigned int referencia)
{
    float error;
    static float integral = 0;
    float mando;
    error = referencia-salida;
    
    integral += error * (T_S/10000);

    float errorP =KP*error;
    float errorI =KI*integral;
    mando = KP*error + KI*integral;
 
    if(mando >100) mando =100;
    if(mando < 0) mando =0;
 if (mando >=100)integral -= error * T_S;
 if (mando <=0)integral -= error * T_S;  
    setDcPWM((1 << 10), (int) mando*100);
    return (int) mando;
}
