
#include <p33FJ128MC802.h>
#include <stdint.h> // define los tipos uint8_t, ...
#include <stdio.h>  // Para usar sprintf
#include <errno.h>
#include <math.h>

#include "DriverPicTrainer/adc.h"
#include "TareaAcelerometro.h"

#include "DriverPicTrainer/config.h"
#include "Hora.h"
#include "TareaLeds.h"
#include "Interrupciones.h"

/* Includes del Kernel. */
#include "FreeRTOS.h"
#include "semphr.h"
#include "task.h"

#define PI 3.14159

void InicializaLeds(void){
    TRISB&=~0xF000;
    //TRISB&=0x0FFF;
    //TRISB|=0xF000;
    PORTB|=0xF000;
//    PORTB&=~0xF000;
}



// Tarea para enviar el estado de las entradas por el puerto serie.
// Sólo se envían cuando hay un cambio de estado.
void MostrarPos(void *pvParameters)
{
   
  extern float angulo;
  float copia;

  extern SemaphoreHandle_t sem_led;
    
  while(1){
      if(xSemaphoreTake(sem_led, (portTickType) 1000) == pdTRUE ){
          vTaskSuspendAll();
            
           copia = angulo;
            
           xTaskResumeAll();
          
           if(copia<=0){
               copia+=360;
           }
           
           
           if(copia<=45 && copia>315){
           
               PORTB&=~(1<<12);
           }else if(copia<=135 && copia>45){
           
               PORTB&=~(1<<13);
           }else if(copia<=225 && copia>135){
           
               PORTB&=~(1<<14);
           } else PORTB&=~(1<<15);
        }
    }

}

