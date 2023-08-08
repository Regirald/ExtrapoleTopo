################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
/home/rleblond/eigen/bench/tensors/benchmark_main.cc \
/home/rleblond/eigen/bench/tensors/contraction_benchmarks_cpu.cc \
/home/rleblond/eigen/bench/tensors/tensor_benchmarks_cpu.cc \
/home/rleblond/eigen/bench/tensors/tensor_benchmarks_sycl.cc \
/home/rleblond/eigen/bench/tensors/tensor_contract_sycl_bench.cc 

CC_DEPS += \
./eigen/bench/tensors/benchmark_main.d \
./eigen/bench/tensors/contraction_benchmarks_cpu.d \
./eigen/bench/tensors/tensor_benchmarks_cpu.d \
./eigen/bench/tensors/tensor_benchmarks_sycl.d \
./eigen/bench/tensors/tensor_contract_sycl_bench.d 

OBJS += \
./eigen/bench/tensors/benchmark_main.o \
./eigen/bench/tensors/contraction_benchmarks_cpu.o \
./eigen/bench/tensors/tensor_benchmarks_cpu.o \
./eigen/bench/tensors/tensor_benchmarks_sycl.o \
./eigen/bench/tensors/tensor_contract_sycl_bench.o 


# Each subdirectory must supply rules for building sources it contributes
eigen/bench/tensors/benchmark_main.o: /home/rleblond/eigen/bench/tensors/benchmark_main.cc eigen/bench/tensors/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/bench/tensors/contraction_benchmarks_cpu.o: /home/rleblond/eigen/bench/tensors/contraction_benchmarks_cpu.cc eigen/bench/tensors/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/bench/tensors/tensor_benchmarks_cpu.o: /home/rleblond/eigen/bench/tensors/tensor_benchmarks_cpu.cc eigen/bench/tensors/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/bench/tensors/tensor_benchmarks_sycl.o: /home/rleblond/eigen/bench/tensors/tensor_benchmarks_sycl.cc eigen/bench/tensors/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

eigen/bench/tensors/tensor_contract_sycl_bench.o: /home/rleblond/eigen/bench/tensors/tensor_contract_sycl_bench.cc eigen/bench/tensors/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I"/home/rleblond/spline" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I/home/rleblond/python3.11.4/include/python3.11 -I"/home/rleblond/eigen/Eigen/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-eigen-2f-bench-2f-tensors

clean-eigen-2f-bench-2f-tensors:
	-$(RM) ./eigen/bench/tensors/benchmark_main.d ./eigen/bench/tensors/benchmark_main.o ./eigen/bench/tensors/contraction_benchmarks_cpu.d ./eigen/bench/tensors/contraction_benchmarks_cpu.o ./eigen/bench/tensors/tensor_benchmarks_cpu.d ./eigen/bench/tensors/tensor_benchmarks_cpu.o ./eigen/bench/tensors/tensor_benchmarks_sycl.d ./eigen/bench/tensors/tensor_benchmarks_sycl.o ./eigen/bench/tensors/tensor_contract_sycl_bench.d ./eigen/bench/tensors/tensor_contract_sycl_bench.o

.PHONY: clean-eigen-2f-bench-2f-tensors

