################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/eigen/demos/opengl/camera.cpp \
/home/rleblond/eigen/demos/opengl/gpuhelper.cpp \
/home/rleblond/eigen/demos/opengl/icosphere.cpp \
/home/rleblond/eigen/demos/opengl/quaternion_demo.cpp \
/home/rleblond/eigen/demos/opengl/trackball.cpp 

CPP_DEPS += \
./eigen/demos/opengl/camera.d \
./eigen/demos/opengl/gpuhelper.d \
./eigen/demos/opengl/icosphere.d \
./eigen/demos/opengl/quaternion_demo.d \
./eigen/demos/opengl/trackball.d 

OBJS += \
./eigen/demos/opengl/camera.o \
./eigen/demos/opengl/gpuhelper.o \
./eigen/demos/opengl/icosphere.o \
./eigen/demos/opengl/quaternion_demo.o \
./eigen/demos/opengl/trackball.o 


# Each subdirectory must supply rules for building sources it contributes
eigen/demos/opengl/camera.o: /home/rleblond/eigen/demos/opengl/camera.cpp eigen/demos/opengl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/demos/opengl/gpuhelper.o: /home/rleblond/eigen/demos/opengl/gpuhelper.cpp eigen/demos/opengl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/demos/opengl/icosphere.o: /home/rleblond/eigen/demos/opengl/icosphere.cpp eigen/demos/opengl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/demos/opengl/quaternion_demo.o: /home/rleblond/eigen/demos/opengl/quaternion_demo.cpp eigen/demos/opengl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/demos/opengl/trackball.o: /home/rleblond/eigen/demos/opengl/trackball.cpp eigen/demos/opengl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2f-demos-2f-opengl

clean-eigen-2f-demos-2f-opengl:
	-$(RM) ./eigen/demos/opengl/camera.d ./eigen/demos/opengl/camera.o ./eigen/demos/opengl/gpuhelper.d ./eigen/demos/opengl/gpuhelper.o ./eigen/demos/opengl/icosphere.d ./eigen/demos/opengl/icosphere.o ./eigen/demos/opengl/quaternion_demo.d ./eigen/demos/opengl/quaternion_demo.o ./eigen/demos/opengl/trackball.d ./eigen/demos/opengl/trackball.o

.PHONY: clean-eigen-2f-demos-2f-opengl

