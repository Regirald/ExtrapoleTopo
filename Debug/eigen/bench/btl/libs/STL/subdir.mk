################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/eigen/bench/btl/libs/STL/main.cpp 

CPP_DEPS += \
./eigen/bench/btl/libs/STL/main.d 

OBJS += \
./eigen/bench/btl/libs/STL/main.o 


# Each subdirectory must supply rules for building sources it contributes
eigen/bench/btl/libs/STL/main.o: /home/rleblond/eigen/bench/btl/libs/STL/main.cpp eigen/bench/btl/libs/STL/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2f-bench-2f-btl-2f-libs-2f-STL

clean-eigen-2f-bench-2f-btl-2f-libs-2f-STL:
	-$(RM) ./eigen/bench/btl/libs/STL/main.d ./eigen/bench/btl/libs/STL/main.o

.PHONY: clean-eigen-2f-bench-2f-btl-2f-libs-2f-STL

