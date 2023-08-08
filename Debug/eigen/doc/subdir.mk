################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/eigen/doc/tutorial.cpp 

CPP_DEPS += \
./eigen/doc/tutorial.d 

OBJS += \
./eigen/doc/tutorial.o 


# Each subdirectory must supply rules for building sources it contributes
eigen/doc/tutorial.o: /home/rleblond/eigen/doc/tutorial.cpp eigen/doc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2f-doc

clean-eigen-2f-doc:
	-$(RM) ./eigen/doc/tutorial.d ./eigen/doc/tutorial.o

.PHONY: clean-eigen-2f-doc

