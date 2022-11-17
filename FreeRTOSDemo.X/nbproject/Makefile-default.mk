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
SOURCEFILES_QUOTED_IF_SPACED=DriverPicTrainer/config.c KernelFreeRTOS/portable/MemMang/heap_1.c KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S KernelFreeRTOS/tasks.c KernelFreeRTOS/list.c KernelFreeRTOS/queue.c KernelFreeRTOS/timers.c KernelFreeRTOS/event_groups.c Serie.c Entradas.c Hora.c DemoMain.c TareaAcelerometro.c DriverPicTrainer/adc.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/DriverPicTrainer/config.o ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o ${OBJECTDIR}/KernelFreeRTOS/tasks.o ${OBJECTDIR}/KernelFreeRTOS/list.o ${OBJECTDIR}/KernelFreeRTOS/queue.o ${OBJECTDIR}/KernelFreeRTOS/timers.o ${OBJECTDIR}/KernelFreeRTOS/event_groups.o ${OBJECTDIR}/Serie.o ${OBJECTDIR}/Entradas.o ${OBJECTDIR}/Hora.o ${OBJECTDIR}/DemoMain.o ${OBJECTDIR}/TareaAcelerometro.o ${OBJECTDIR}/DriverPicTrainer/adc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/DriverPicTrainer/config.o.d ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o.d ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o.d ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d ${OBJECTDIR}/KernelFreeRTOS/tasks.o.d ${OBJECTDIR}/KernelFreeRTOS/list.o.d ${OBJECTDIR}/KernelFreeRTOS/queue.o.d ${OBJECTDIR}/KernelFreeRTOS/timers.o.d ${OBJECTDIR}/KernelFreeRTOS/event_groups.o.d ${OBJECTDIR}/Serie.o.d ${OBJECTDIR}/Entradas.o.d ${OBJECTDIR}/Hora.o.d ${OBJECTDIR}/DemoMain.o.d ${OBJECTDIR}/TareaAcelerometro.o.d ${OBJECTDIR}/DriverPicTrainer/adc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/DriverPicTrainer/config.o ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o ${OBJECTDIR}/KernelFreeRTOS/tasks.o ${OBJECTDIR}/KernelFreeRTOS/list.o ${OBJECTDIR}/KernelFreeRTOS/queue.o ${OBJECTDIR}/KernelFreeRTOS/timers.o ${OBJECTDIR}/KernelFreeRTOS/event_groups.o ${OBJECTDIR}/Serie.o ${OBJECTDIR}/Entradas.o ${OBJECTDIR}/Hora.o ${OBJECTDIR}/DemoMain.o ${OBJECTDIR}/TareaAcelerometro.o ${OBJECTDIR}/DriverPicTrainer/adc.o

# Source Files
SOURCEFILES=DriverPicTrainer/config.c KernelFreeRTOS/portable/MemMang/heap_1.c KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S KernelFreeRTOS/tasks.c KernelFreeRTOS/list.c KernelFreeRTOS/queue.c KernelFreeRTOS/timers.c KernelFreeRTOS/event_groups.c Serie.c Entradas.c Hora.c DemoMain.c TareaAcelerometro.c DriverPicTrainer/adc.c



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
${OBJECTDIR}/DriverPicTrainer/config.o: DriverPicTrainer/config.c  .generated_files/flags/default/91add3595cb7f733ed59beab83269d7df827032 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/DriverPicTrainer" 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/config.o.d 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DriverPicTrainer/config.c  -o ${OBJECTDIR}/DriverPicTrainer/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DriverPicTrainer/config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o: KernelFreeRTOS/portable/MemMang/heap_1.c  .generated_files/flags/default/adc3d57a3c1429e22f35d53e7b2632597ebeb641 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MemMang" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o: KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/flags/default/eed92592821d465df73fff1e157db4948f264dbc .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/tasks.o: KernelFreeRTOS/tasks.c  .generated_files/flags/default/4845097697f05abb6ddfc6467f7e5e92b89bb691 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/tasks.c  -o ${OBJECTDIR}/KernelFreeRTOS/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/list.o: KernelFreeRTOS/list.c  .generated_files/flags/default/a61210742f13b7a5816bcb0684300a47eec2a988 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/list.c  -o ${OBJECTDIR}/KernelFreeRTOS/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/queue.o: KernelFreeRTOS/queue.c  .generated_files/flags/default/34e469a20adc1b4cdcca6ff1ed9550b88e89fc0b .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/queue.c  -o ${OBJECTDIR}/KernelFreeRTOS/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/timers.o: KernelFreeRTOS/timers.c  .generated_files/flags/default/7b5148cbb9db0956e073b3126c9fd49cf33add40 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/timers.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/timers.c  -o ${OBJECTDIR}/KernelFreeRTOS/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/event_groups.o: KernelFreeRTOS/event_groups.c  .generated_files/flags/default/6a2efd7fb47344b8338432bd71d6ca80caecf819 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/event_groups.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/event_groups.c  -o ${OBJECTDIR}/KernelFreeRTOS/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/event_groups.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Serie.o: Serie.c  .generated_files/flags/default/af25e7fefaa777d6563dba94a617e8988bc2c34a .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Serie.o.d 
	@${RM} ${OBJECTDIR}/Serie.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Serie.c  -o ${OBJECTDIR}/Serie.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Serie.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Entradas.o: Entradas.c  .generated_files/flags/default/ea8164f4a33c17166b888a8da1c778416d67549e .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Entradas.o.d 
	@${RM} ${OBJECTDIR}/Entradas.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Entradas.c  -o ${OBJECTDIR}/Entradas.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Entradas.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Hora.o: Hora.c  .generated_files/flags/default/88853bcd78e55d8d714b812985de323a65e7f90 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Hora.o.d 
	@${RM} ${OBJECTDIR}/Hora.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Hora.c  -o ${OBJECTDIR}/Hora.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Hora.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/DemoMain.o: DemoMain.c  .generated_files/flags/default/9d538f385d7c952d8971dfcf1699a56c57bccaf8 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DemoMain.o.d 
	@${RM} ${OBJECTDIR}/DemoMain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DemoMain.c  -o ${OBJECTDIR}/DemoMain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DemoMain.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/TareaAcelerometro.o: TareaAcelerometro.c  .generated_files/flags/default/22036cf66e702929f5b7d8c20bc18d6422c7c089 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TareaAcelerometro.o.d 
	@${RM} ${OBJECTDIR}/TareaAcelerometro.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  TareaAcelerometro.c  -o ${OBJECTDIR}/TareaAcelerometro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/TareaAcelerometro.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/DriverPicTrainer/adc.o: DriverPicTrainer/adc.c  .generated_files/flags/default/d2367759df49f46902171dd78c6694d40db31acd .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/DriverPicTrainer" 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/adc.o.d 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DriverPicTrainer/adc.c  -o ${OBJECTDIR}/DriverPicTrainer/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DriverPicTrainer/adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/DriverPicTrainer/config.o: DriverPicTrainer/config.c  .generated_files/flags/default/74aa09cfedf8efdd9b9bdf1b74c4df7367490c97 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/DriverPicTrainer" 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/config.o.d 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DriverPicTrainer/config.c  -o ${OBJECTDIR}/DriverPicTrainer/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DriverPicTrainer/config.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o: KernelFreeRTOS/portable/MemMang/heap_1.c  .generated_files/flags/default/3ea19b569f1bde26ca171ea230092bbe11fb5e94 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MemMang" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MemMang/heap_1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o: KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/flags/default/7a603e61c17af909a6090b759001b45f3398b1c4 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/tasks.o: KernelFreeRTOS/tasks.c  .generated_files/flags/default/7c87e7abe486c507b079735becb3284b38d81aa9 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/tasks.c  -o ${OBJECTDIR}/KernelFreeRTOS/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/tasks.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/list.o: KernelFreeRTOS/list.c  .generated_files/flags/default/661e8a643988d05e3c583965609940cc3c12925 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/list.c  -o ${OBJECTDIR}/KernelFreeRTOS/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/list.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/queue.o: KernelFreeRTOS/queue.c  .generated_files/flags/default/b489f8cfe18ff72d26b9b730b9f178f23e613162 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/queue.c  -o ${OBJECTDIR}/KernelFreeRTOS/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/queue.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/timers.o: KernelFreeRTOS/timers.c  .generated_files/flags/default/d1b01a5c2a58d341ec323400b330c8dae7a4f23f .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/timers.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/timers.c  -o ${OBJECTDIR}/KernelFreeRTOS/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/timers.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/KernelFreeRTOS/event_groups.o: KernelFreeRTOS/event_groups.c  .generated_files/flags/default/dd7986af59b023b8faa2edf71baa51d448fd2e40 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/event_groups.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  KernelFreeRTOS/event_groups.c  -o ${OBJECTDIR}/KernelFreeRTOS/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/event_groups.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Serie.o: Serie.c  .generated_files/flags/default/f96c80112dc3663079d81a43660480d5cd7c9ca3 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Serie.o.d 
	@${RM} ${OBJECTDIR}/Serie.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Serie.c  -o ${OBJECTDIR}/Serie.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Serie.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Entradas.o: Entradas.c  .generated_files/flags/default/22b40b3effe442a21395ca94f53ad3dd50af652a .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Entradas.o.d 
	@${RM} ${OBJECTDIR}/Entradas.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Entradas.c  -o ${OBJECTDIR}/Entradas.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Entradas.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Hora.o: Hora.c  .generated_files/flags/default/7d17c9261ba0ddb9a1f4b4b615e2c0309e926786 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Hora.o.d 
	@${RM} ${OBJECTDIR}/Hora.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Hora.c  -o ${OBJECTDIR}/Hora.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Hora.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/DemoMain.o: DemoMain.c  .generated_files/flags/default/ce0151414546cc3a26a94e07dd13ae066e60a743 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DemoMain.o.d 
	@${RM} ${OBJECTDIR}/DemoMain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DemoMain.c  -o ${OBJECTDIR}/DemoMain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DemoMain.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/TareaAcelerometro.o: TareaAcelerometro.c  .generated_files/flags/default/7ce39d6cb7332529491c8bf8bebb51928cd44967 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TareaAcelerometro.o.d 
	@${RM} ${OBJECTDIR}/TareaAcelerometro.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  TareaAcelerometro.c  -o ${OBJECTDIR}/TareaAcelerometro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/TareaAcelerometro.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/DriverPicTrainer/adc.o: DriverPicTrainer/adc.c  .generated_files/flags/default/6ca7b8fad5a3987f92536085a925fa030ac5c32f .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/DriverPicTrainer" 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/adc.o.d 
	@${RM} ${OBJECTDIR}/DriverPicTrainer/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DriverPicTrainer/adc.c  -o ${OBJECTDIR}/DriverPicTrainer/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DriverPicTrainer/adc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o: KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/flags/default/aaac051a32b19cbdb57f2aafe609dc44b1119423 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
	@${MKDIR} "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    -I"." -I"KernelFreeRTOS/include" -I"KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC" -Wa,-MD,"${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o: KernelFreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/flags/default/3966779a2f7d7b6d5ece78a809eaef160324441 .generated_files/flags/default/74d464f3899599845d713a1d015fd0bf2695bd19
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
