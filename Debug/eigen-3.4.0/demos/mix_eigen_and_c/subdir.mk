################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/eigen-3.4.0/demos/mix_eigen_and_c/binary_library.cpp 

C_SRCS += \
/home/rleblond/eigen-3.4.0/demos/mix_eigen_and_c/example.c 

CPP_DEPS += \
./eigen-3.4.0/demos/mix_eigen_and_c/binary_library.d 

C_DEPS += \
./eigen-3.4.0/demos/mix_eigen_and_c/example.d 

OBJS += \
./eigen-3.4.0/demos/mix_eigen_and_c/binary_library.o \
./eigen-3.4.0/demos/mix_eigen_and_c/example.o 


# Each subdirectory must supply rules for building sources it contributes
eigen-3.4.0/demos/mix_eigen_and_c/binary_library.o: /home/rleblond/eigen-3.4.0/demos/mix_eigen_and_c/binary_library.cpp eigen-3.4.0/demos/mix_eigen_and_c/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/demos/mix_eigen_and_c/example.o: /home/rleblond/eigen-3.4.0/demos/mix_eigen_and_c/example.c eigen-3.4.0/demos/mix_eigen_and_c/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2d-3-2e-4-2e-0-2f-demos-2f-mix_eigen_and_c

clean-eigen-2d-3-2e-4-2e-0-2f-demos-2f-mix_eigen_and_c:
	-$(RM) ./eigen-3.4.0/demos/mix_eigen_and_c/binary_library.d ./eigen-3.4.0/demos/mix_eigen_and_c/binary_library.o ./eigen-3.4.0/demos/mix_eigen_and_c/example.d ./eigen-3.4.0/demos/mix_eigen_and_c/example.o

.PHONY: clean-eigen-2d-3-2e-4-2e-0-2f-demos-2f-mix_eigen_and_c

