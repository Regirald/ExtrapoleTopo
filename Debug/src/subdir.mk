################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Main.cpp 

CPP_DEPS += \
./src/Main.d 

OBJS += \
./src/Main.o 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/usr/include/boost -I/home/rleblond/Python-3.10.0/env/include/python3.10 -I/home/rleblond/eigen-3.4.0 -I/home/rleblond/libInterpolate/src/libInterpolate -I/home/rleblond/matplotlib-cpp -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-src

clean-src:
	-$(RM) ./src/Main.d ./src/Main.o

.PHONY: clean-src

