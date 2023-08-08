################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/rleblond/python3.11.4/lib/python3.11/config-3.11-x86_64-linux-gnu/config.c 

O_SRCS += \
/home/rleblond/python3.11.4/lib/python3.11/config-3.11-x86_64-linux-gnu/python.o 

C_DEPS += \
./python3.11.4/lib/python3.11/config-3.11-x86_64-linux-gnu/config.d 

OBJS += \
./python3.11.4/lib/python3.11/config-3.11-x86_64-linux-gnu/config.o 


# Each subdirectory must supply rules for building sources it contributes
python3.11.4/lib/python3.11/config-3.11-x86_64-linux-gnu/config.o: /home/rleblond/python3.11.4/lib/python3.11/config-3.11-x86_64-linux-gnu/config.c python3.11.4/lib/python3.11/config-3.11-x86_64-linux-gnu/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/rleblond/python3.11.4/include/python3.11" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-python3-2e-11-2e-4-2f-lib-2f-python3-2e-11-2f-config-2d-3-2e-11-2d-x86_64-2d-linux-2d-gnu

clean-python3-2e-11-2e-4-2f-lib-2f-python3-2e-11-2f-config-2d-3-2e-11-2d-x86_64-2d-linux-2d-gnu:
	-$(RM) ./python3.11.4/lib/python3.11/config-3.11-x86_64-linux-gnu/config.d ./python3.11.4/lib/python3.11/config-3.11-x86_64-linux-gnu/config.o

.PHONY: clean-python3-2e-11-2e-4-2f-lib-2f-python3-2e-11-2f-config-2d-3-2e-11-2d-x86_64-2d-linux-2d-gnu

