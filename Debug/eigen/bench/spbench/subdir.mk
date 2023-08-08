################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/eigen/bench/spbench/sp_solver.cpp \
/home/rleblond/eigen/bench/spbench/spbenchsolver.cpp \
/home/rleblond/eigen/bench/spbench/test_sparseLU.cpp 

CPP_DEPS += \
./eigen/bench/spbench/sp_solver.d \
./eigen/bench/spbench/spbenchsolver.d \
./eigen/bench/spbench/test_sparseLU.d 

OBJS += \
./eigen/bench/spbench/sp_solver.o \
./eigen/bench/spbench/spbenchsolver.o \
./eigen/bench/spbench/test_sparseLU.o 


# Each subdirectory must supply rules for building sources it contributes
eigen/bench/spbench/sp_solver.o: /home/rleblond/eigen/bench/spbench/sp_solver.cpp eigen/bench/spbench/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/bench/spbench/spbenchsolver.o: /home/rleblond/eigen/bench/spbench/spbenchsolver.cpp eigen/bench/spbench/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/bench/spbench/test_sparseLU.o: /home/rleblond/eigen/bench/spbench/test_sparseLU.cpp eigen/bench/spbench/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2f-bench-2f-spbench

clean-eigen-2f-bench-2f-spbench:
	-$(RM) ./eigen/bench/spbench/sp_solver.d ./eigen/bench/spbench/sp_solver.o ./eigen/bench/spbench/spbenchsolver.d ./eigen/bench/spbench/spbenchsolver.o ./eigen/bench/spbench/test_sparseLU.d ./eigen/bench/spbench/test_sparseLU.o

.PHONY: clean-eigen-2f-bench-2f-spbench

