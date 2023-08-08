################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
/home/rleblond/eigen-3.4.0/bench/btl/data/mean.cxx \
/home/rleblond/eigen-3.4.0/bench/btl/data/regularize.cxx \
/home/rleblond/eigen-3.4.0/bench/btl/data/smooth.cxx 

CXX_DEPS += \
./eigen-3.4.0/bench/btl/data/mean.d \
./eigen-3.4.0/bench/btl/data/regularize.d \
./eigen-3.4.0/bench/btl/data/smooth.d 

OBJS += \
./eigen-3.4.0/bench/btl/data/mean.o \
./eigen-3.4.0/bench/btl/data/regularize.o \
./eigen-3.4.0/bench/btl/data/smooth.o 


# Each subdirectory must supply rules for building sources it contributes
eigen-3.4.0/bench/btl/data/mean.o: /home/rleblond/eigen-3.4.0/bench/btl/data/mean.cxx eigen-3.4.0/bench/btl/data/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/bench/btl/data/regularize.o: /home/rleblond/eigen-3.4.0/bench/btl/data/regularize.cxx eigen-3.4.0/bench/btl/data/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/bench/btl/data/smooth.o: /home/rleblond/eigen-3.4.0/bench/btl/data/smooth.cxx eigen-3.4.0/bench/btl/data/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2d-3-2e-4-2e-0-2f-bench-2f-btl-2f-data

clean-eigen-2d-3-2e-4-2e-0-2f-bench-2f-btl-2f-data:
	-$(RM) ./eigen-3.4.0/bench/btl/data/mean.d ./eigen-3.4.0/bench/btl/data/mean.o ./eigen-3.4.0/bench/btl/data/regularize.d ./eigen-3.4.0/bench/btl/data/regularize.o ./eigen-3.4.0/bench/btl/data/smooth.d ./eigen-3.4.0/bench/btl/data/smooth.o

.PHONY: clean-eigen-2d-3-2e-4-2e-0-2f-bench-2f-btl-2f-data

