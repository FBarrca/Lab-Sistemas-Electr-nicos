#include <p33FJ128MC802.h>
#include <stdint.h> // define los tipos uint8\_t, ...
#include <stdio.h>  // Para usar sprintf

#include "DriverPicTrainer/config.h"

#include "Interrupciones.h" // Enable y Disable
#include "Serie.h"          // Módulos del sistema
#include "TareaAcelerometro.h"
#include "TareaLeds.h"

#include "FreeRTOS.h" // Includes del Kernel
#include "semphr.h"
#include "queue.h"
#include "task.h"

#define PRIO_ACEL 2
#define PRIO_SERIE 3
#define PRIO_LEDS 4
#define TAM_PILA_SERIE 250 // Esta tarea necesita 100 bytes adicionales para una cadena
#define TAM_PILA 150

SemaphoreHandle_t sem_serie; // Semáforo para el acceso a la UART
SemaphoreHandle_t sem_led;


float angulo = 0;


int main(void)
{
    InicializarReloj();
    InicializarSerie();
    InicializaAcel();
    InicializaLeds();

    // Se inicializa el semáforo
    vSemaphoreCreateBinary(sem_serie);
    vSemaphoreCreateBinary(sem_led);
    // Se crean las tareas
    xTaskCreate(LeerAcel, "Acel", TAM_PILA, NULL,
                PRIO_ACEL, NULL);
//    xTaskCreate(EnviaEntradas, "EnvEntr", TAM_PILA, NULL,
//                PRIO_ENV_ENTR, NULL);
    xTaskCreate(ProcesaEnvSerie, "PrSer", TAM_PILA_SERIE, NULL,
                PRIO_SERIE, NULL);
    
    xTaskCreate(MostrarPos, "Led", TAM_PILA_SERIE, NULL,
               PRIO_LEDS, NULL);

    vTaskStartScheduler(); // y por último se arranca el
                           // planificador.
    return 0; // En teoría no se debe llegar nunca aquí.
}
