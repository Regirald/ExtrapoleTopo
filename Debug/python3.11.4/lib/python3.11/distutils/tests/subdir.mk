################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/rleblond/python3.11.4/lib/python3.11/distutils/tests/xxmodule.c 

C_DEPS += \
./python3.11.4/lib/python3.11/distutils/tests/xxmodule.d 

OBJS += \
./python3.11.4/lib/python3.11/distutils/tests/xxmodule.o 


# Each subdirectory must supply rules for building sources it contributes
python3.11.4/lib/python3.11/distutils/tests/xxmodule.o: /home/rleblond/python3.11.4/lib/python3.11/distutils/tests/xxmodule.c python3.11.4/lib/python3.11/distutils/tests/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-python3-2e-11-2e-4-2f-lib-2f-python3-2e-11-2f-distutils-2f-tests

clean-python3-2e-11-2e-4-2f-lib-2f-python3-2e-11-2f-distutils-2f-tests:
	-$(RM) ./python3.11.4/lib/python3.11/distutils/tests/xxmodule.d ./python3.11.4/lib/python3.11/distutils/tests/xxmodule.o

.PHONY: clean-python3-2e-11-2e-4-2f-lib-2f-python3-2e-11-2f-distutils-2f-tests

