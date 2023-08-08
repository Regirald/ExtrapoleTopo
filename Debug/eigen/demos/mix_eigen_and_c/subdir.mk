################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/eigen/demos/mix_eigen_and_c/binary_library.cpp 

C_SRCS += \
/home/rleblond/eigen/demos/mix_eigen_and_c/example.c 

CPP_DEPS += \
./eigen/demos/mix_eigen_and_c/binary_library.d 

C_DEPS += \
./eigen/demos/mix_eigen_and_c/example.d 

OBJS += \
./eigen/demos/mix_eigen_and_c/binary_library.o \
./eigen/demos/mix_eigen_and_c/example.o 


# Each subdirectory must supply rules for building sources it contributes
eigen/demos/mix_eigen_and_c/binary_library.o: /home/rleblond/eigen/demos/mix_eigen_and_c/binary_library.cpp eigen/demos/mix_eigen_and_c/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/demos/mix_eigen_and_c/example.o: /home/rleblond/eigen/demos/mix_eigen_and_c/example.c eigen/demos/mix_eigen_and_c/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2f-demos-2f-mix_eigen_and_c

clean-eigen-2f-demos-2f-mix_eigen_and_c:
	-$(RM) ./eigen/demos/mix_eigen_and_c/binary_library.d ./eigen/demos/mix_eigen_and_c/binary_library.o ./eigen/demos/mix_eigen_and_c/example.d ./eigen/demos/mix_eigen_and_c/example.o

.PHONY: clean-eigen-2f-demos-2f-mix_eigen_and_c

