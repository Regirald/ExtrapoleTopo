################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
/home/rleblond/eigen/bench/btl/data/mean.cxx \
/home/rleblond/eigen/bench/btl/data/regularize.cxx \
/home/rleblond/eigen/bench/btl/data/smooth.cxx 

CXX_DEPS += \
./eigen/bench/btl/data/mean.d \
./eigen/bench/btl/data/regularize.d \
./eigen/bench/btl/data/smooth.d 

OBJS += \
./eigen/bench/btl/data/mean.o \
./eigen/bench/btl/data/regularize.o \
./eigen/bench/btl/data/smooth.o 


# Each subdirectory must supply rules for building sources it contributes
eigen/bench/btl/data/mean.o: /home/rleblond/eigen/bench/btl/data/mean.cxx eigen/bench/btl/data/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/bench/btl/data/regularize.o: /home/rleblond/eigen/bench/btl/data/regularize.cxx eigen/bench/btl/data/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/bench/btl/data/smooth.o: /home/rleblond/eigen/bench/btl/data/smooth.cxx eigen/bench/btl/data/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2f-bench-2f-btl-2f-data

clean-eigen-2f-bench-2f-btl-2f-data:
	-$(RM) ./eigen/bench/btl/data/mean.d ./eigen/bench/btl/data/mean.o ./eigen/bench/btl/data/regularize.d ./eigen/bench/btl/data/regularize.o ./eigen/bench/btl/data/smooth.d ./eigen/bench/btl/data/smooth.o

.PHONY: clean-eigen-2f-bench-2f-btl-2f-data

