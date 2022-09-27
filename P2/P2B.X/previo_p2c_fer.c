#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include "uart.h"
#include "config.h"
#include "interpolar_sensor.h"
#include "pwm.h"

unsigned int Mando();
void EnviarDatos(unsigned int mando);


int main(void) {
    
    unsigned int mando;

    inicializarReloj();
    TRISB &= 0x0FFF;
    // Inicializaciones
    inicializarUART(115200);
    inicializarTareaIdle(10);
    inicializarADCPolling(0x20);
    inicializarPWM(1<<10, 10000);
    setDcPWM(1<<10, 5000);
    activarPWM(1<<10);


    while (1) {
        mando = Mando();
        EnviarDatos(mando);
        tareaIdle();
    }
    return 0;
}


void Mando(){
    static unsigned int cont = 0;
    unsigned int mando = 50;
    
    if(cont == 1000){
        setDcPWM(1<<10, 10000);
        mando = 100;
    
    }
    
    if(cont == 1000){
        setDcPWM(1<<10, 0);
        mando = 0;
        
    }

    cont++;
    return mando;
}


void EnviarDatos(unsigned int mando){
    
    static unsigned int cont = 0;
    
    unsigned int lectura;
    unsigned int lux;
    char send_data[9];
    
    if((cont > 800) && (cont < 1200)){
        lectura = leerADCPolling(5);

        lux = interpolarSensor(lectura);

        sprintf(send_data, " %d,? %d;\n", mando, lux);
        putsUART(send_data);
    }
    
    cont++;

}