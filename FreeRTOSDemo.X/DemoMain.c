#include <p33FJ128MC802.h>
#include <stdint.h> // define los tipos uint8\_t, ...
#include <stdio.h>  // Para usar sprintf

#include "DriverPicTrainer/config.h"

#include "Interrupciones.h" // Enable y Disable
#include "Serie.h"          // Módulos del sistema
#include "Hora.h"
#include "Entradas.h"
#include "TareaAcelerometro.h"

#include "FreeRTOS.h" // Includes del Kernel
#include "semphr.h"
#include "queue.h"
#include "task.h"


#define PRIO_ACEL 2
#define PRIO_SERIE 3
#define PRIO_LEDS 4
#define TAM_PILA 250
#define TAM_PILA_SERIE 250
SemaphoreHandle_t sem_serie; // Semáforo para el acceso a la UART
SemaphoreHandle_t sem_led;
float angulo;

int main(void)
{
    vSemaphoreCreateBinary(sem_serie);

    InicializarReloj();
    
    InicializarMandarAngulo();
    //InicializaEntradas();
    InicializarSerie();
    InicializaAcel();
    

    // Se inicializa el semáforo

    // Se crean las tareas
    xTaskCreate(LeerAcel, "Acel", TAM_PILA, NULL,
                PRIO_ACEL, NULL);
//    xTaskCreate(EnviaEntradas, "EnvEntr", TAM_PILA, NULL,
//                PRIO_ENV_ENTR, NULL);
    xTaskCreate(ProcesaEnvSerie, "PrSer", TAM_PILA_SERIE, NULL,
                PRIO_SERIE, NULL);
    
   // xTaskCreate(MostrarPos, "Led", TAM_PILA_SERIE, NULL,
     //          PRIO_LEDS, NULL);
    vTaskStartScheduler(); // y por último se arranca el
                           // planificador.
    return 0; // En teoría no se debe llegar nunca aquí.
}

/* Cuando está activa la verificación de desborde de pila, si FreeRTOS descubre
 * un desbode en la pila ejecuta esta función. La función se limita a bloquearse
 * en un bucle sin fin para que al pausar el programa con el debugger veamos que
 * efectivamente algo va mal con las pilas. En estos casos suele bastar con
 * aumentar su tamaño.
 */
#ifdef configCHECK_FOR_STACK_OVERFLOW

void vApplicationStackOverflowHook( TaskHandle_t xTask,
                                        char * pcTaskName )
{
    static int var_inc = 0;
    
    while(1){
        var_inc++; // Para que el optimizador no quite el bucle.
    }
}
#endif

/* Rutinas de atención a los traps. Vienen bien en depuración, para ver si está
 * ocurriendo algún error de acceso a memoria o matemático. En ese caso el
 * programa entrará continuamente en estas funciones y haciendo una pausa con
 * el debugger veremos que ha ocurrido un error.
 */

static int a=0, b=0, c=0;
void __attribute__((interrupt,no_auto_psv)) _AddressError(void)
{
    INTCON1bits.ADDRERR = 0; // Borramos el flag
    a++;
    return;
}

void __attribute__((interrupt,no_auto_psv)) _StackError(void)
{
    INTCON1bits.STKERR = 0; // Borramos el flag
    b++;
    return;
}

void __attribute__((interrupt,no_auto_psv)) _MathError(void)
{
    INTCON1bits.MATHERR = 0; // Borramos el flag
    c++;
    return;
}