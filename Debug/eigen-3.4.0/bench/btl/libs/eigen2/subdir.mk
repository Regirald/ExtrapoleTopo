################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/eigen-3.4.0/bench/btl/libs/eigen2/btl_tiny_eigen2.cpp \
/home/rleblond/eigen-3.4.0/bench/btl/libs/eigen2/main_adv.cpp \
/home/rleblond/eigen-3.4.0/bench/btl/libs/eigen2/main_linear.cpp \
/home/rleblond/eigen-3.4.0/bench/btl/libs/eigen2/main_matmat.cpp \
/home/rleblond/eigen-3.4.0/bench/btl/libs/eigen2/main_vecmat.cpp 

CPP_DEPS += \
./eigen-3.4.0/bench/btl/libs/eigen2/btl_tiny_eigen2.d \
./eigen-3.4.0/bench/btl/libs/eigen2/main_adv.d \
./eigen-3.4.0/bench/btl/libs/eigen2/main_linear.d \
./eigen-3.4.0/bench/btl/libs/eigen2/main_matmat.d \
./eigen-3.4.0/bench/btl/libs/eigen2/main_vecmat.d 

OBJS += \
./eigen-3.4.0/bench/btl/libs/eigen2/btl_tiny_eigen2.o \
./eigen-3.4.0/bench/btl/libs/eigen2/main_adv.o \
./eigen-3.4.0/bench/btl/libs/eigen2/main_linear.o \
./eigen-3.4.0/bench/btl/libs/eigen2/main_matmat.o \
./eigen-3.4.0/bench/btl/libs/eigen2/main_vecmat.o 


# Each subdirectory must supply rules for building sources it contributes
eigen-3.4.0/bench/btl/libs/eigen2/btl_tiny_eigen2.o: /home/rleblond/eigen-3.4.0/bench/btl/libs/eigen2/btl_tiny_eigen2.cpp eigen-3.4.0/bench/btl/libs/eigen2/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/bench/btl/libs/eigen2/main_adv.o: /home/rleblond/eigen-3.4.0/bench/btl/libs/eigen2/main_adv.cpp eigen-3.4.0/bench/btl/libs/eigen2/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/bench/btl/libs/eigen2/main_linear.o: /home/rleblond/eigen-3.4.0/bench/btl/libs/eigen2/main_linear.cpp eigen-3.4.0/bench/btl/libs/eigen2/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/bench/btl/libs/eigen2/main_matmat.o: /home/rleblond/eigen-3.4.0/bench/btl/libs/eigen2/main_matmat.cpp eigen-3.4.0/bench/btl/libs/eigen2/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/bench/btl/libs/eigen2/main_vecmat.o: /home/rleblond/eigen-3.4.0/bench/btl/libs/eigen2/main_vecmat.cpp eigen-3.4.0/bench/btl/libs/eigen2/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2d-3-2e-4-2e-0-2f-bench-2f-btl-2f-libs-2f-eigen2

clean-eigen-2d-3-2e-4-2e-0-2f-bench-2f-btl-2f-libs-2f-eigen2:
	-$(RM) ./eigen-3.4.0/bench/btl/libs/eigen2/btl_tiny_eigen2.d ./eigen-3.4.0/bench/btl/libs/eigen2/btl_tiny_eigen2.o ./eigen-3.4.0/bench/btl/libs/eigen2/main_adv.d ./eigen-3.4.0/bench/btl/libs/eigen2/main_adv.o ./eigen-3.4.0/bench/btl/libs/eigen2/main_linear.d ./eigen-3.4.0/bench/btl/libs/eigen2/main_linear.o ./eigen-3.4.0/bench/btl/libs/eigen2/main_matmat.d ./eigen-3.4.0/bench/btl/libs/eigen2/main_matmat.o ./eigen-3.4.0/bench/btl/libs/eigen2/main_vecmat.d ./eigen-3.4.0/bench/btl/libs/eigen2/main_vecmat.o

.PHONY: clean-eigen-2d-3-2e-4-2e-0-2f-bench-2f-btl-2f-libs-2f-eigen2

