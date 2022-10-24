
#ifndef INTERRUPCIONES_H
#define	INTERRUPCIONES_H

#include <p33FJ128MC802.h> 

#define Enable() {SET_CPU_IPL(0);};
#define Disable() {SET_CPU_IPL(7);};


#endif	
