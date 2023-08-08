################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/spline/examples/tests/compile_units.cpp \
/home/rleblond/spline/examples/tests/myfunc1.cpp \
/home/rleblond/spline/examples/tests/myfunc2.cpp \
/home/rleblond/spline/examples/tests/simple_demo_c98.cpp 

CPP_DEPS += \
./spline/examples/tests/compile_units.d \
./spline/examples/tests/myfunc1.d \
./spline/examples/tests/myfunc2.d \
./spline/examples/tests/simple_demo_c98.d 

OBJS += \
./spline/examples/tests/compile_units.o \
./spline/examples/tests/myfunc1.o \
./spline/examples/tests/myfunc2.o \
./spline/examples/tests/simple_demo_c98.o 


# Each subdirectory must supply rules for building sources it contributes
spline/examples/tests/compile_units.o: /home/rleblond/spline/examples/tests/compile_units.cpp spline/examples/tests/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spline/examples/tests/myfunc1.o: /home/rleblond/spline/examples/tests/myfunc1.cpp spline/examples/tests/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spline/examples/tests/myfunc2.o: /home/rleblond/spline/examples/tests/myfunc2.cpp spline/examples/tests/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spline/examples/tests/simple_demo_c98.o: /home/rleblond/spline/examples/tests/simple_demo_c98.cpp spline/examples/tests/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-spline-2f-examples-2f-tests

clean-spline-2f-examples-2f-tests:
	-$(RM) ./spline/examples/tests/compile_units.d ./spline/examples/tests/compile_units.o ./spline/examples/tests/myfunc1.d ./spline/examples/tests/myfunc1.o ./spline/examples/tests/myfunc2.d ./spline/examples/tests/myfunc2.o ./spline/examples/tests/simple_demo_c98.d ./spline/examples/tests/simple_demo_c98.o

.PHONY: clean-spline-2f-examples-2f-tests

