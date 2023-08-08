################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/eigen-3.4.0/unsupported/doc/examples/SYCL/CwiseMul.cpp 

CPP_DEPS += \
./eigen-3.4.0/unsupported/doc/examples/SYCL/CwiseMul.d 

OBJS += \
./eigen-3.4.0/unsupported/doc/examples/SYCL/CwiseMul.o 


# Each subdirectory must supply rules for building sources it contributes
eigen-3.4.0/unsupported/doc/examples/SYCL/CwiseMul.o: /home/rleblond/eigen-3.4.0/unsupported/doc/examples/SYCL/CwiseMul.cpp eigen-3.4.0/unsupported/doc/examples/SYCL/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2d-3-2e-4-2e-0-2f-unsupported-2f-doc-2f-examples-2f-SYCL

clean-eigen-2d-3-2e-4-2e-0-2f-unsupported-2f-doc-2f-examples-2f-SYCL:
	-$(RM) ./eigen-3.4.0/unsupported/doc/examples/SYCL/CwiseMul.d ./eigen-3.4.0/unsupported/doc/examples/SYCL/CwiseMul.o

.PHONY: clean-eigen-2d-3-2e-4-2e-0-2f-unsupported-2f-doc-2f-examples-2f-SYCL

