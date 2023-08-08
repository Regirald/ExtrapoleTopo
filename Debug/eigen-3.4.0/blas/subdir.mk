################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/eigen-3.4.0/blas/complex_double.cpp \
/home/rleblond/eigen-3.4.0/blas/complex_single.cpp \
/home/rleblond/eigen-3.4.0/blas/double.cpp \
/home/rleblond/eigen-3.4.0/blas/single.cpp \
/home/rleblond/eigen-3.4.0/blas/xerbla.cpp 

CPP_DEPS += \
./eigen-3.4.0/blas/complex_double.d \
./eigen-3.4.0/blas/complex_single.d \
./eigen-3.4.0/blas/double.d \
./eigen-3.4.0/blas/single.d \
./eigen-3.4.0/blas/xerbla.d 

OBJS += \
./eigen-3.4.0/blas/complex_double.o \
./eigen-3.4.0/blas/complex_single.o \
./eigen-3.4.0/blas/double.o \
./eigen-3.4.0/blas/single.o \
./eigen-3.4.0/blas/xerbla.o 


# Each subdirectory must supply rules for building sources it contributes
eigen-3.4.0/blas/complex_double.o: /home/rleblond/eigen-3.4.0/blas/complex_double.cpp eigen-3.4.0/blas/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/blas/complex_single.o: /home/rleblond/eigen-3.4.0/blas/complex_single.cpp eigen-3.4.0/blas/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/blas/double.o: /home/rleblond/eigen-3.4.0/blas/double.cpp eigen-3.4.0/blas/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/blas/single.o: /home/rleblond/eigen-3.4.0/blas/single.cpp eigen-3.4.0/blas/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/blas/xerbla.o: /home/rleblond/eigen-3.4.0/blas/xerbla.cpp eigen-3.4.0/blas/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2d-3-2e-4-2e-0-2f-blas

clean-eigen-2d-3-2e-4-2e-0-2f-blas:
	-$(RM) ./eigen-3.4.0/blas/complex_double.d ./eigen-3.4.0/blas/complex_double.o ./eigen-3.4.0/blas/complex_single.d ./eigen-3.4.0/blas/complex_single.o ./eigen-3.4.0/blas/double.d ./eigen-3.4.0/blas/double.o ./eigen-3.4.0/blas/single.d ./eigen-3.4.0/blas/single.o ./eigen-3.4.0/blas/xerbla.d ./eigen-3.4.0/blas/xerbla.o

.PHONY: clean-eigen-2d-3-2e-4-2e-0-2f-blas

