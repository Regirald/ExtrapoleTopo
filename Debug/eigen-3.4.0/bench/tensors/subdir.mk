################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
/home/rleblond/eigen-3.4.0/bench/tensors/benchmark_main.cc \
/home/rleblond/eigen-3.4.0/bench/tensors/contraction_benchmarks_cpu.cc \
/home/rleblond/eigen-3.4.0/bench/tensors/tensor_benchmarks_cpu.cc \
/home/rleblond/eigen-3.4.0/bench/tensors/tensor_benchmarks_sycl.cc \
/home/rleblond/eigen-3.4.0/bench/tensors/tensor_contract_sycl_bench.cc 

CC_DEPS += \
./eigen-3.4.0/bench/tensors/benchmark_main.d \
./eigen-3.4.0/bench/tensors/contraction_benchmarks_cpu.d \
./eigen-3.4.0/bench/tensors/tensor_benchmarks_cpu.d \
./eigen-3.4.0/bench/tensors/tensor_benchmarks_sycl.d \
./eigen-3.4.0/bench/tensors/tensor_contract_sycl_bench.d 

OBJS += \
./eigen-3.4.0/bench/tensors/benchmark_main.o \
./eigen-3.4.0/bench/tensors/contraction_benchmarks_cpu.o \
./eigen-3.4.0/bench/tensors/tensor_benchmarks_cpu.o \
./eigen-3.4.0/bench/tensors/tensor_benchmarks_sycl.o \
./eigen-3.4.0/bench/tensors/tensor_contract_sycl_bench.o 


# Each subdirectory must supply rules for building sources it contributes
eigen-3.4.0/bench/tensors/benchmark_main.o: /home/rleblond/eigen-3.4.0/bench/tensors/benchmark_main.cc eigen-3.4.0/bench/tensors/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/bench/tensors/contraction_benchmarks_cpu.o: /home/rleblond/eigen-3.4.0/bench/tensors/contraction_benchmarks_cpu.cc eigen-3.4.0/bench/tensors/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/bench/tensors/tensor_benchmarks_cpu.o: /home/rleblond/eigen-3.4.0/bench/tensors/tensor_benchmarks_cpu.cc eigen-3.4.0/bench/tensors/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/bench/tensors/tensor_benchmarks_sycl.o: /home/rleblond/eigen-3.4.0/bench/tensors/tensor_benchmarks_sycl.cc eigen-3.4.0/bench/tensors/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen-3.4.0/bench/tensors/tensor_contract_sycl_bench.o: /home/rleblond/eigen-3.4.0/bench/tensors/tensor_contract_sycl_bench.cc eigen-3.4.0/bench/tensors/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen-3.4.0/Eigen" -I"/home/rleblond/spline/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2d-3-2e-4-2e-0-2f-bench-2f-tensors

clean-eigen-2d-3-2e-4-2e-0-2f-bench-2f-tensors:
	-$(RM) ./eigen-3.4.0/bench/tensors/benchmark_main.d ./eigen-3.4.0/bench/tensors/benchmark_main.o ./eigen-3.4.0/bench/tensors/contraction_benchmarks_cpu.d ./eigen-3.4.0/bench/tensors/contraction_benchmarks_cpu.o ./eigen-3.4.0/bench/tensors/tensor_benchmarks_cpu.d ./eigen-3.4.0/bench/tensors/tensor_benchmarks_cpu.o ./eigen-3.4.0/bench/tensors/tensor_benchmarks_sycl.d ./eigen-3.4.0/bench/tensors/tensor_benchmarks_sycl.o ./eigen-3.4.0/bench/tensors/tensor_contract_sycl_bench.d ./eigen-3.4.0/bench/tensors/tensor_contract_sycl_bench.o

.PHONY: clean-eigen-2d-3-2e-4-2e-0-2f-bench-2f-tensors

