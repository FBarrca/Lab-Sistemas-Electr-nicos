unsigned int interpolarSensor ( unsigned int valor_adc ){

	int pos = 0;
	unsigned int lux;


	static unsigned int vec_adc [] = {0.4000, 0.4300,0.5600,0.7000,0.8000,1.1400,1.3300,1.7000,2.0000,2.2000,2.3000,2.6500,3.2000}
	static unsigned int vec_lux [] = { 75, 58,120 , 102, 154, 186, 320, 380,  540,  640, 700, 820,1100};

	while(valor_adc > vec_adc[pos + 1]){pos++;} //valor_adc estará entre pos y pos+1


	lux = vec_lux[pos]+(((vec_lux[pos+1] - vec_lux[pos])/(vec_adc[pos+1] - vec_adc[pos]))*(valor_adc - vec_adc[pos]));

	return lux;


}
