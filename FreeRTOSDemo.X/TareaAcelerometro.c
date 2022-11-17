
#include <p33FJ128MC802.h>
#include <stdint.h> // define los tipos uint8_t, ...
#include <stdio.h>  // Para usar sprintf
#include <errno.h>
#include <math.h>

#include "DriverPicTrainer/adc.h"
#include "TareaAcelerometro.h"

#include "DriverPicTrainer/config.h"
#include "Hora.h"
#include "Serie.h"
#include "Interrupciones.h"

/* Includes del Kernel. */
#include "FreeRTOS.h"
#include "semphr.h"
#include "task.h"

#define PI 3.14159

void InicializaAcel(void){
    inicializarADCPolling(3);
}



// Tarea para enviar el estado de las entradas por el puerto serie.
// Sólo se envían cuando hay un cambio de estado.
void LeerAcel(void *pvParameters)
{
   
  extern float angulo;
  float angulo_act;
  float angulo_ant;
  unsigned int lectura_y, lectura_x;
  float l_y, l_x;
  extern SemaphoreHandle_t sem_serie;
  extern SemaphoreHandle_t sem_led;

    
  while(1){
        lectura_y = leerADCPolling(1);
        lectura_x = leerADCPolling(0);

        l_y = (lectura_y-512.0)/512.0*10;
        l_x = (lectura_x-512.0)/512.0*10;
        
        angulo_act = atan2(-l_x, -l_y)*180/PI;

        if (fabs(angulo_act-angulo_ant) >= 1.5){
            
            vTaskSuspendAll();
            
            angulo = angulo_act;
            
            xTaskResumeAll();
            
            xSemaphoreGive(sem_serie);
            xSemaphoreGive(sem_led);


        }
        
        angulo_ant = angulo_act;
        
        
  }
}

