unsigned int interpolarSensor ( unsigned int valor_adc ){

	int pos = 0;
	unsigned int lux;

	static unsigned int vec_adc [] = {155 , 267 , 294}
	static unsigned int vec_lux [] = {0 , 100 , 120};

	while(valor_adc > vec_adc[pos + 1]){pos++;} //valor_adc estará entre pos y pos+1


	lux = vec_lux[pos]+(((vec_lux[pos+1] - vec_lux[pos])/(vec_adc[pos+1] - vec_adc[pos]))*(valor_adc - vec_adc[pos]));

	return lux;


}
