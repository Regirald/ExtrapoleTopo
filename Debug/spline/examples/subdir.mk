################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/spline/examples/cubic_root.cpp \
/home/rleblond/spline/examples/plot.cpp \
/home/rleblond/spline/examples/plot_alglib.cpp \
/home/rleblond/spline/examples/plot_avg_preserv.cpp \
/home/rleblond/spline/examples/plot_bspline.cpp \
/home/rleblond/spline/examples/plot_parametric.cpp \
/home/rleblond/spline/examples/simple_demo.cpp 

C_SRCS += \
/home/rleblond/spline/examples/gsl_solve_cubic.c 

CPP_DEPS += \
./spline/examples/cubic_root.d \
./spline/examples/plot.d \
./spline/examples/plot_alglib.d \
./spline/examples/plot_avg_preserv.d \
./spline/examples/plot_bspline.d \
./spline/examples/plot_parametric.d \
./spline/examples/simple_demo.d 

C_DEPS += \
./spline/examples/gsl_solve_cubic.d 

OBJS += \
./spline/examples/cubic_root.o \
./spline/examples/gsl_solve_cubic.o \
./spline/examples/plot.o \
./spline/examples/plot_alglib.o \
./spline/examples/plot_avg_preserv.o \
./spline/examples/plot_bspline.o \
./spline/examples/plot_parametric.o \
./spline/examples/simple_demo.o 


# Each subdirectory must supply rules for building sources it contributes
spline/examples/cubic_root.o: /home/rleblond/spline/examples/cubic_root.cpp spline/examples/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spline/examples/gsl_solve_cubic.o: /home/rleblond/spline/examples/gsl_solve_cubic.c spline/examples/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spline/examples/plot.o: /home/rleblond/spline/examples/plot.cpp spline/examples/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spline/examples/plot_alglib.o: /home/rleblond/spline/examples/plot_alglib.cpp spline/examples/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spline/examples/plot_avg_preserv.o: /home/rleblond/spline/examples/plot_avg_preserv.cpp spline/examples/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spline/examples/plot_bspline.o: /home/rleblond/spline/examples/plot_bspline.cpp spline/examples/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spline/examples/plot_parametric.o: /home/rleblond/spline/examples/plot_parametric.cpp spline/examples/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spline/examples/simple_demo.o: /home/rleblond/spline/examples/simple_demo.cpp spline/examples/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/usr/include/eigen3" -I"/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes" -I"/home/rleblond/matplotlib-cpp" -I/usr/include/python3.10 -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/spline/src -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-spline-2f-examples

clean-spline-2f-examples:
	-$(RM) ./spline/examples/cubic_root.d ./spline/examples/cubic_root.o ./spline/examples/gsl_solve_cubic.d ./spline/examples/gsl_solve_cubic.o ./spline/examples/plot.d ./spline/examples/plot.o ./spline/examples/plot_alglib.d ./spline/examples/plot_alglib.o ./spline/examples/plot_avg_preserv.d ./spline/examples/plot_avg_preserv.o ./spline/examples/plot_bspline.d ./spline/examples/plot_bspline.o ./spline/examples/plot_parametric.d ./spline/examples/plot_parametric.o ./spline/examples/simple_demo.d ./spline/examples/simple_demo.o

.PHONY: clean-spline-2f-examples

