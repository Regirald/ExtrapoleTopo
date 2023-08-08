################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/matplotlib-cpp/CMakeFiles/3.22.1/CompilerIdCXX/CMakeCXXCompilerId.cpp 

CPP_DEPS += \
./matplotlib-cpp/CMakeFiles/3.22.1/CompilerIdCXX/CMakeCXXCompilerId.d 

OBJS += \
./matplotlib-cpp/CMakeFiles/3.22.1/CompilerIdCXX/CMakeCXXCompilerId.o 


# Each subdirectory must supply rules for building sources it contributes
matplotlib-cpp/CMakeFiles/3.22.1/CompilerIdCXX/CMakeCXXCompilerId.o: /home/rleblond/matplotlib-cpp/CMakeFiles/3.22.1/CompilerIdCXX/CMakeCXXCompilerId.cpp matplotlib-cpp/CMakeFiles/3.22.1/CompilerIdCXX/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/usr/include/eigen3" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-matplotlib-2d-cpp-2f-CMakeFiles-2f-3-2e-22-2e-1-2f-CompilerIdCXX

clean-matplotlib-2d-cpp-2f-CMakeFiles-2f-3-2e-22-2e-1-2f-CompilerIdCXX:
	-$(RM) ./matplotlib-cpp/CMakeFiles/3.22.1/CompilerIdCXX/CMakeCXXCompilerId.d ./matplotlib-cpp/CMakeFiles/3.22.1/CompilerIdCXX/CMakeCXXCompilerId.o

.PHONY: clean-matplotlib-2d-cpp-2f-CMakeFiles-2f-3-2e-22-2e-1-2f-CompilerIdCXX

