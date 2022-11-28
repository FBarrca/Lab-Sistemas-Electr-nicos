#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FreeRTOSDemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FreeRTOSDemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=DriverPicTrainer/config.c DriverPicTrainer/adc.c KernelFreeRTOS/portable/MemMang/heap_1.c KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S KernelFreeRTOS/tasks.c KernelFreeRTOS/list.c KernelFreeRTOS/queue.c KernelFreeRTOS/timers.c KernelFreeRTOS/event_groups.c Serie.c Entradas.c Hora.c DemoMain.c TareaAcelerometro.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/DriverPicTrainer/config.o ${OBJECTDIR}/DriverPicTrainer/adc.o ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o ${OBJECTDIR}/KernelFreeRTOS/tasks.o ${OBJECTDIR}/KernelFreeRTOS/list.o ${OBJECTDIR}/KernelFreeRTOS/queue.o ${OBJECTDIR}/KernelFreeRTOS/timers.o ${OBJECTDIR}/KernelFreeRTOS/event_groups.o ${OBJECTDIR}/Serie.o ${OBJECTDIR}/Entradas.o ${OBJECTDIR}/Hora.o ${OBJECTDIR}/DemoMain.o ${OBJECTDIR}/TareaAcelerometro.o
POSSIBLE_DEPFILES=${OBJECTDIR}/DriverPicTrainer/config.o.d ${OBJECTDIR}/DriverPicTrainer/adc.o.d ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o.d ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o.d ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d ${OBJECTDIR}/KernelFreeRTOS/tasks.o.d ${OBJECTDIR}/KernelFreeRTOS/list.o.d ${OBJECTDIR}/KernelFreeRTOS/queue.o.d ${OBJECTDIR}/KernelFreeRTOS/timers.o.d ${OBJECTDIR}/KernelFreeRTOS/event_groups.o.d ${OBJECTDIR}/Serie.o.d ${OBJECTDIR}/Entradas.o.d ${OBJECTDIR}/Hora.o.d ${OBJECTDIR}/DemoMain.o.d ${OBJECTDIR}/TareaAcelerometro.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/DriverPicTrainer/config.o ${OBJECTDIR}/DriverPicTrainer/adc.o ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o ${OBJECTDIR}/KernelFreeRTOS/tasks.o ${OBJECTDIR}/KernelFreeRTOS/list.o ${OBJECTDIR}/KernelFreeRTOS/queue.o ${OBJECTDIR}/KernelFreeRTOS/timers.o ${OBJECTDIR}/KernelFreeRTOS/event_groups.o ${OBJECTDIR}/Serie.o ${OBJECTDIR}/Entradas.o ${OBJECTDIR}/Hora.o ${OBJECTDIR}/DemoMain.o ${OBJECTDIR}/TareaAcelerometro.o

# Source Files
SOURCEFILES=DriverPicTrainer/config.c DriverPicTrainer/adc.c KernelFreeRTOS/portable/MemMang/heap_1.c KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S KernelFreeRTOS/tasks.c KernelFreeRTOS/list.c KernelFreeRTOS/queue.c KernelFreeRTOS/timers.c KernelFreeRTOS/event_groups.c Serie.c Entradas.c Hora.c DemoMain.c TareaAcelerometro.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/FreeRTOSDemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ128MC802
MP_LINKER_FILE_OPTION=,--script=p33FJ128MC802.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/DriverPicTrainer/config.o: DriverPicTrainer/config.c  .generated_files/flags/default/b93a5771107938e56c84a88c16796945b71005f1 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/DriverPicTrainer" 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/config.o.d 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DriverPicTrainer/config.c  -o ${OBJECTDIR}/DriverPicTrainer/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DriverPicTrainer/config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/DriverPicTrainer/adc.o: DriverPicTrainer/adc.c  .generated_files/flags/default/ac2053f4d9446e0bbc73ad62dd95fbf9fde681e8 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/DriverPicTrainer" 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/adc.o.d 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DriverPicTrainer/adc.c  -o ${OBJECTDIR}/DriverPicTrainer/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DriverPicTrainer/adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o: KernelFreeRTOS/portable/MemMang/heap_1.c  .generated_files/flags/default/9927742e0529bcf9a412ba6e4424f3c50279f9c7 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MemMang" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o: KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/flags/default/7262df3fc4006e0db06f8bc7e9991fc44caa4adc .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/tasks.o: KernelFreeRTOS/tasks.c  .generated_files/flags/default/386724d52f41254905a54a9907a855c236f4f31c .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/tasks.c  -o ${OBJECTDIR}/KernelFreeRTOS/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/list.o: KernelFreeRTOS/list.c  .generated_files/flags/default/a62f395ffa0f182f575b34de9004d0a7199365dd .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/list.c  -o ${OBJECTDIR}/KernelFreeRTOS/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/queue.o: KernelFreeRTOS/queue.c  .generated_files/flags/default/9eb2368791404d1eb2f9edf4ae21451b3e2d1f39 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/queue.c  -o ${OBJECTDIR}/KernelFreeRTOS/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/timers.o: KernelFreeRTOS/timers.c  .generated_files/flags/default/6d72d6e953d9a6b0183ae614256a8759927ff88a .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/timers.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/timers.c  -o ${OBJECTDIR}/KernelFreeRTOS/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/event_groups.o: KernelFreeRTOS/event_groups.c  .generated_files/flags/default/50418b283424c2a201f98cf8c4a8381179f9d08a .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/event_groups.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/event_groups.c  -o ${OBJECTDIR}/KernelFreeRTOS/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/event_groups.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Serie.o: Serie.c  .generated_files/flags/default/dea808a2ea32cc8f34f74335b59d3755f458716b .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Serie.o.d 
	@${RM} ${OBJECTDIR}/Serie.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Serie.c  -o ${OBJECTDIR}/Serie.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Serie.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Entradas.o: Entradas.c  .generated_files/flags/default/8fda472d504443773b4082e399bea07758996e98 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Entradas.o.d 
	@${RM} ${OBJECTDIR}/Entradas.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Entradas.c  -o ${OBJECTDIR}/Entradas.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Entradas.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Hora.o: Hora.c  .generated_files/flags/default/3c789023a8301fe0531a9d397c77e2b2e04e624c .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Hora.o.d 
	@${RM} ${OBJECTDIR}/Hora.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Hora.c  -o ${OBJECTDIR}/Hora.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Hora.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/DemoMain.o: DemoMain.c  .generated_files/flags/default/576d67c6b4455ed4bd15cd130f35b8f0cd590a5a .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DemoMain.o.d 
	@${RM} ${OBJECTDIR}/DemoMain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DemoMain.c  -o ${OBJECTDIR}/DemoMain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DemoMain.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/TareaAcelerometro.o: TareaAcelerometro.c  .generated_files/flags/default/2f515d8cca2a91322ec774bbdbb972ab844f69f9 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TareaAcelerometro.o.d 
	@${RM} ${OBJECTDIR}/TareaAcelerometro.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  TareaAcelerometro.c  -o ${OBJECTDIR}/TareaAcelerometro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/TareaAcelerometro.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/DriverPicTrainer/config.o: DriverPicTrainer/config.c  .generated_files/flags/default/841b6a972105a475cd575a63f30f36963acd5efa .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/DriverPicTrainer" 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/config.o.d 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DriverPicTrainer/config.c  -o ${OBJECTDIR}/DriverPicTrainer/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DriverPicTrainer/config.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/DriverPicTrainer/adc.o: DriverPicTrainer/adc.c  .generated_files/flags/default/8c6e39f4fb94991ee38bd7394859561dea28e9ad .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/DriverPicTrainer" 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/adc.o.d 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DriverPicTrainer/adc.c  -o ${OBJECTDIR}/DriverPicTrainer/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DriverPicTrainer/adc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o: KernelFreeRTOS/portable/MemMang/heap_1.c  .generated_files/flags/default/952ca0402e2a49c65a10788d6f7069869e9afde5 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MemMang" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o: KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/flags/default/e638e82db4d2d11041a99c2f3916bbf5a6ff47ac .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/tasks.o: KernelFreeRTOS/tasks.c  .generated_files/flags/default/8ec7c2a92dc6fb3d11bcdaf7f75708006d39fde3 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/tasks.c  -o ${OBJECTDIR}/KernelFreeRTOS/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/tasks.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/list.o: KernelFreeRTOS/list.c  .generated_files/flags/default/9ac0a94b2731c28745da372bc2e019a89b555264 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/list.c  -o ${OBJECTDIR}/KernelFreeRTOS/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/list.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/queue.o: KernelFreeRTOS/queue.c  .generated_files/flags/default/b7993813dc737cdcf203bc83a2d17e8573d39ea3 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/queue.c  -o ${OBJECTDIR}/KernelFreeRTOS/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/queue.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/timers.o: KernelFreeRTOS/timers.c  .generated_files/flags/default/f5d7278352f4d73d5a1e9846f5871d2f446b61a7 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/timers.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/timers.c  -o ${OBJECTDIR}/KernelFreeRTOS/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/timers.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/event_groups.o: KernelFreeRTOS/event_groups.c  .generated_files/flags/default/2108be9d452f2173d6d6f288f14b043733ce8902 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/event_groups.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/event_groups.c  -o ${OBJECTDIR}/KernelFreeRTOS/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/event_groups.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Serie.o: Serie.c  .generated_files/flags/default/b0c695da59be8c00e2b2db1bc01b1a59d7923343 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Serie.o.d 
	@${RM} ${OBJECTDIR}/Serie.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Serie.c  -o ${OBJECTDIR}/Serie.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Serie.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Entradas.o: Entradas.c  .generated_files/flags/default/ed90553e35f84056cff9887380686bd4990911f7 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Entradas.o.d 
	@${RM} ${OBJECTDIR}/Entradas.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Entradas.c  -o ${OBJECTDIR}/Entradas.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Entradas.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Hora.o: Hora.c  .generated_files/flags/default/df995279f59353f25d79d7087cf138d5ee7c1047 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Hora.o.d 
	@${RM} ${OBJECTDIR}/Hora.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Hora.c  -o ${OBJECTDIR}/Hora.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Hora.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/DemoMain.o: DemoMain.c  .generated_files/flags/default/f6152f23c6bf183dd706af05d404b95991e61d41 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DemoMain.o.d 
	@${RM} ${OBJECTDIR}/DemoMain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DemoMain.c  -o ${OBJECTDIR}/DemoMain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DemoMain.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/TareaAcelerometro.o: TareaAcelerometro.c  .generated_files/flags/default/ff57541918b6d2f4cafd920efd4514589e6bc5fb .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TareaAcelerometro.o.d 
	@${RM} ${OBJECTDIR}/TareaAcelerometro.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  TareaAcelerometro.c  -o ${OBJECTDIR}/TareaAcelerometro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/TareaAcelerometro.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o: KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/flags/default/9087c316877d157a31c1b028bd88e8b6d5cf9ab0 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -Wa,-MD,"${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o: KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/flags/default/580d88fe9ce630dc14e5162ca7df5167cd2fa602 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)    -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -Wa,-MD,"${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/FreeRTOSDemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/FreeRTOSDemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC"  -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/FreeRTOSDemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/FreeRTOSDemo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/FreeRTOSDemo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
