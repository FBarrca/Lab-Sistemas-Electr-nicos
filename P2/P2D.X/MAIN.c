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

#define T_S 0.001f // 1ms
#define KP 0.18f//0.31596f
#define KI 7.12f//50.4885f // 1/T1

int main(void)
{

    char send_data[9];
    inicializarReloj();
    TRISB &= 0x0FFF;
    // Inicializaciones
    inicializarUART(115200);
    inicializarTareaIdle(10);// 1 ms
    inicializarADCPolling(0x20);
    inicializarPWM((1 << 10), 1000);
    activarPWM((1 << 10));

    unsigned int lectura;
    unsigned int lux = 0;
    unsigned int t = 0;
    unsigned int pwm;
    unsigned int referencia= 300;
    //unsigned int * p_pwm;
    //unsigned int * p_mando;
    while (1)
    { // Tarea 2
        lectura = leerADCPolling(5);
        lux = interpolarSensor(lectura);
        // Medida de la intensidad luminosa
        // Tarea 1
        
        if (t==1000){
            referencia = 500;
        }else if(t==2000){
            referencia=300;
        } 
        
        pwm = ControlBulb(lux,referencia);

        
        tareaIdle();
        t++;
        if (t<3000 && t%10==0) sendData (referencia, pwm,lux );
        
//        for (int i =0 ;i<1023;i+=1 ){
//        lux = interpolarSensor(i);
//        sendData (0, i,lux );
//        tareaIdle();
//        }
    }
        return 0;
}

void sendData(unsigned int ref, unsigned int mando, unsigned int salida)
{
    char send_data[25];
    sprintf(send_data, " %d, %d, %d;\n", ref, mando,salida);
    putsUART(send_data);
}

int ControlBulb(unsigned int salida, unsigned int referencia) // unsigned int * p_pwm, unsigned int * p_mando)
{
    int error;
    static float integral = 0; // se ha de mantener entre ejecuciones
    float mando;
    error = (int)referencia-salida; //hacemos cast a float ya que sino la op se hace en unsigned int
    
    
    integral += error * (T_S); // La integral es el error acumulado

    float errorP =KP*error;
    float errorI =KI*integral;
    mando = (KP*error + KI*integral); // set DCPWM trabaja con centesimas de porcentaje
 
    //saturación 
    if(mando >100){
        mando =100;
        integral -= error * (T_S);
    }
    if(mando < 0){
        mando = 0;
        integral -= error * (T_S); 
    }

        
    //Anti-windup
    
    //ajuste de mando
    setDcPWM((1 << 10), (int) (mando)*100);
    //*p_mando=mando;
    //*p_pwm=
    return (int) mando;
}
