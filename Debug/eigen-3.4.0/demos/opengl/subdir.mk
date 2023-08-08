################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/eigen-3.4.0/demos/opengl/camera.cpp \
/home/rleblond/eigen-3.4.0/demos/opengl/gpuhelper.cpp \
/home/rleblond/eigen-3.4.0/demos/opengl/icosphere.cpp \
/home/rleblond/eigen-3.4.0/demos/opengl/quaternion_demo.cpp \
/home/rleblond/eigen-3.4.0/demos/opengl/trackball.cpp 

CPP_DEPS += \
./eigen-3.4.0/demos/opengl/camera.d \
./eigen-3.4.0/demos/opengl/gpuhelper.d \
./eigen-3.4.0/demos/opengl/icosphere.d \
./eigen-3.4.0/demos/opengl/quaternion_demo.d \
./eigen-3.4.0/demos/opengl/trackball.d 

OBJS += \
./eigen-3.4.0/demos/opengl/camera.o \
./eigen-3.4.0/demos/opengl/gpuhelper.o \
./eigen-3.4.0/demos/opengl/icosphere.o \
./eigen-3.4.0/demos/opengl/quaternion_demo.o \
./eigen-3.4.0/demos/opengl/trackball.o 


# Each subdirectory must supply rules for building sources it contributes
eigen-3.4.0/demos/opengl/camera.o: /home/rleblond/eigen-3.4.0/demos/opengl/camera.cpp eigen-3.4.0/demos/opengl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/demos/opengl/gpuhelper.o: /home/rleblond/eigen-3.4.0/demos/opengl/gpuhelper.cpp eigen-3.4.0/demos/opengl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/demos/opengl/icosphere.o: /home/rleblond/eigen-3.4.0/demos/opengl/icosphere.cpp eigen-3.4.0/demos/opengl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/demos/opengl/quaternion_demo.o: /home/rleblond/eigen-3.4.0/demos/opengl/quaternion_demo.cpp eigen-3.4.0/demos/opengl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/demos/opengl/trackball.o: /home/rleblond/eigen-3.4.0/demos/opengl/trackball.cpp eigen-3.4.0/demos/opengl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2d-3-2e-4-2e-0-2f-demos-2f-opengl

clean-eigen-2d-3-2e-4-2e-0-2f-demos-2f-opengl:
	-$(RM) ./eigen-3.4.0/demos/opengl/camera.d ./eigen-3.4.0/demos/opengl/camera.o ./eigen-3.4.0/demos/opengl/gpuhelper.d ./eigen-3.4.0/demos/opengl/gpuhelper.o ./eigen-3.4.0/demos/opengl/icosphere.d ./eigen-3.4.0/demos/opengl/icosphere.o ./eigen-3.4.0/demos/opengl/quaternion_demo.d ./eigen-3.4.0/demos/opengl/quaternion_demo.o ./eigen-3.4.0/demos/opengl/trackball.d ./eigen-3.4.0/demos/opengl/trackball.o

.PHONY: clean-eigen-2d-3-2e-4-2e-0-2f-demos-2f-opengl

