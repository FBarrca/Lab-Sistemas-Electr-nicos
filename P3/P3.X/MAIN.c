#include <p33FJ128MC802.h> 
#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include "uart.h"
#include "config.h"
#include "pwm.h"
#include "idle.h"
#include "adc.h"   
#include "interrupciones.h"
#include "interpolar_sensor.h" 

void sendData(void);

float buffer[2][2];

int bandera = 0;

int main(void)
{
    char send_data[9];
    inicializarReloj();
    TRISB &= 0x0FFF;
    // Inicializaciones
    inicializarUART(115200);
    inicializarTareaIdle(2000);// 200 ms
    inicializarADCPolling(1<<5);
    inicializarPWM((1 << 10), 1000); //1000 Hz y se puede hasta 6kHz
    setDcPWM(1<<10, 5000);
    activarPWM((1 << 10)); //entrada puente pin RB10



    IEC3bits.PWM1IE = 1; //habilitar interrupción
    IPC14bits.PWM1IP = 3; //prioridad interrupción pwm
    IFS3bits.PWM1IF = 0; //flag pwm
    
    Enable(); //se habilitan las interrupciones

    
    while (1)
    { 
        if(bandera == 1){
            sendData();
            bandera = 0;
        
        }

        tareaIdle();


    }
        return 0;
}

void sendData(void)
{
    unsigned int e1, e2, s1, s2;
    unsigned int peso = 0;
    unsigned int tension = 0;
    
    Disable();
    e1 = buffer [0][0];
    e2 = buffer [1][0];
    s1 = buffer [0][1];
    s2 = buffer [1][1];
    Enable();
    
    if (e1 == 0 && e2 == 1) {

        tension = s1 - s2;
    
    }
    else {

        tension = s2 - s1;
 
    }
    
    peso =  InterpolarSensor(tension); 
    
    char send_data[25];
    sprintf(send_data, "peso = %d", peso);
    putsUART(send_data);
}


void __attribute__((interrupt(no_auto_psv))) _MPWM1Interrupt (void) {
    
    static int posbuffer = 0; //posición de guardado
    static int cont = 0;
    unsigned int salida = 0;
    unsigned int entrada = 0;
    
    IFS3bits.PWM1IF = 0;

    salida = leerADCPolling(5); //conectar salida a AN5
    
    if(P1TMRbits.PTDIR == 1){
        entrada = 0;
    }else{ entrada = 1;}
    
    cont++;
    
    
    buffer[posbuffer][0] = entrada;
    buffer[posbuffer][1] = salida;

    posbuffer =! posbuffer;
    
    
    if(cont == 2){
        bandera = 1;
        cont = 0;
    }
      
}

