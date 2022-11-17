#include <p33FJ128MC802.h>
#include <stdint.h>
#include <stdio.h>

#include "Hora.h"
#include "Serie.h"
#include "Interrupciones.h"

// Includes del Kernel.
#include "FreeRTOS.h"
#include "semphr.h"
#include "task.h"

typedef struct{
	uint8_t hor;
	uint8_t min;
	uint8_t seg;
}Hora_t;

static Hora_t hora_act={0,0,0};

SemaphoreHandle_t sem_hora; // semáforo para sincronización

void ImprimeAngulo(void *pvParameters)
{

  char cadena[12];//="Hola\n";
  extern SemaphoreHandle_t sem_serie;
  extern float angulo;
  float c_angulo;
  while(1) {

        // Ha saltado una nueva interrupción de tiempo
        vTaskSuspendAll();
        c_angulo = angulo;
        xTaskResumeAll();
        if (xSemaphoreTake(sem_serie, (TickType_t) 1000)
                == pdTRUE) {
            // Por si acaso sprintf no es reentrante la ejecutamos protegida por el semáforo.
            sprintf(cadena, "Angulo: %02f\n", c_angulo);

            putsUART(cadena); // Se tiene el semáforo: se puede acceder al puerto serie
            xSemaphoreGive(sem_serie); // Se suelta el semáforo
        } else {
            // Después de 1000 ticks no se ha obtenido el semáforo.

        }
  }
}

void InicializarMandarAngulo(void)
{
    // Se inicializa el semáforo para sincronizar la Tarea
    // ImprimeHora con la interrupción del timer.
    vSemaphoreCreateBinary(sem_hora);

    // Se pide el semáforo para que hasta que no salte la
    // interrupción no se ejecute la tarea.
    xSemaphoreTake(sem_hora, (portTickType) 0 );
}

