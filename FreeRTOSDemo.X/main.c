#include <p33FJ128MC802.h>
#include <stdint.h> // define los tipos uint8\_t, ...
#include <stdio.h>  // Para usar sprintf

#include "DriverPicTrainer/config.h"

#include "Interrupciones.h" // Enable y Disable

#include "TareaAcel.h"
#include "TareaEnviar.h"
#include "TareaCompOri.h"
#include "TareaLEDS.h"

#include "FreeRTOS.h" // Includes del Kernel
#include "semphr.h"
#include "queue.h"
#include "task.h"

#define PRIO_LEDS 3
#define PRIO_SERIE 3
#define PRIO_ORI 2
#define PRIO_ACEL 1
#define TAM_PILA_HORA      250 // Como utiliza sprintf, necesita 100 palabras más.
#define TAM_PILA_ENTRADAS  250 // Como utiliza sprintf, necesita 100 palabras más.
#define TAM_PILA_SERIE     250

SemaphoreHandle_t sem_ori = 0; // Semáforo para computar la orientación actual
SemaphoreHandle_t sem_serie = 0; // Semáforo para el acceso a la UART
SemaphoreHandle_t sem_leds = 0; // Semáforo para el actializar leds

float angulo = 0;
int orientacion =0;

int main(void)
{
    InicializarReloj();
    InitAcel();
    InitLeds();
    InitEnviar();
    

    // Se inicializa el semáforo a 0(bloqueado)
    vSemaphoreCreateBinary(sem_ori);
    vSemaphoreCreateBinary(sem_serie);
    vSemaphoreCreateBinary(sem_leds);

    // Se crean las tareas
    xTaskCreate(LeerAcel,   "LeA", TAM_PILA_HORA, NULL,
                PRIO_ACEL, NULL);
    xTaskCreate(ComputarOri, "ComOri", TAM_PILA_ENTRADAS, NULL,
                PRIO_ORI, NULL);
    xTaskCreate(MostrarOri,   "MoOri", TAM_PILA_SERIE, NULL,
                PRIO_LEDS, NULL);
    xTaskCreate(EnviarOri,   "EnO", TAM_PILA_SERIE, NULL,
                PRIO_SERIE, NULL);
    
    
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