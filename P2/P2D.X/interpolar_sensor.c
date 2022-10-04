#include <xc.h>
#include "interpolar_sensor.h"

unsigned int interpolarSensor ( unsigned int valor_adc ){

	int pos = 0;
	unsigned int lux;


	static  int vec_adc [] = {0,  124,   133,  174,  217,   248,   353,  412,  527,   620,   682,   713,   821,  992, 1024};

	static  int vec_lux [] = {0, 58, 75 ,102 , 120, 154, 186, 320, 380,  540,  640, 700, 820, 1100, 1279};

	while(valor_adc > vec_adc[pos + 1]){pos++;} //valor_adc estará entre pos y pos+1


	lux = vec_lux[pos]+(((float)(vec_lux[pos+1] - vec_lux[pos])/(vec_adc[pos+1] - vec_adc[pos]))*(valor_adc - vec_adc[pos]));

//    if(lux<=0)lux=0;
	return lux;


}
