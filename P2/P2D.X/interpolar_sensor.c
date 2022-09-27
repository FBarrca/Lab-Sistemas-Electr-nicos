#include <xc.h>
#include "interpolar_sensor.h"

unsigned int interpolarSensor ( unsigned int valor_adc ){

	int pos = 0;
	unsigned int lux;


	static unsigned int vec_adc [15] = {0,  124,   133,  174,  217,   248,   353,  412,  527,   620,   682,   713,   821,  992, 1024};

	static unsigned int vec_lux [15] = {0, 75, 58,120 , 102, 154, 186, 320, 380,  540,  640, 700, 820, 1100, 1279};

	while(valor_adc > vec_adc[pos + 1]){pos++;} //valor_adc estará entre pos y pos+1


	lux = vec_lux[pos]+(((vec_lux[pos+1] - vec_lux[pos])/(vec_adc[pos+1] - vec_adc[pos]))*(valor_adc - vec_adc[pos]));

    if(lux<=0)lux=0;
	return lux;


}
