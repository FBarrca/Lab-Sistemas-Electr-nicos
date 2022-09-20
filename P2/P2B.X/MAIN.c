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

int main(void) {
    
    char send_data[9];

    inicializarReloj();
    TRISB &= 0x0FFF;
    // Inicializaciones
    inicializarUART(115200);
    inicializarTareaIdle(4235);
    inicializarADCPolling(0x20);

    unsigned int lectura;
    unsigned int lux;
    while (1) {


        tareaIdle();
        lectura = leerADCPolling(5);

        lux = interpolarSensor(lectura);

        sprintf(send_data, "lux: %u\n", lux);
        putsUART(send_data);
       // putsUART("hola");
        

    }
    return 0;
}