################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rleblond/python3.11.4/lib/python3.11/test/_testcppext.cpp 

CPP_DEPS += \
./python3.11.4/lib/python3.11/test/_testcppext.d 

OBJS += \
./python3.11.4/lib/python3.11/test/_testcppext.o 


# Each subdirectory must supply rules for building sources it contributes
python3.11.4/lib/python3.11/test/_testcppext.o: /home/rleblond/python3.11.4/lib/python3.11/test/_testcppext.cpp python3.11.4/lib/python3.11/test/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/rleblond/eclipse-workspace/ExtrapoleTopo/includes -I"/home/rleblond/matplotlib-cpp" -I/home/rleblond/.local/lib/python3.10/site-packages/numpy/core/include/numpy -I"/home/rleblond/libInterpolate/src/libInterpolate" -I"/home/rleblond/eigen-3.4.0/Eigen2" -I/home/rleblond/eigen-3.4.0/Eigen -I/usr/include/boost -I/home/rleblond/python3.11.4/include/python3.11 -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-python3-2e-11-2e-4-2f-lib-2f-python3-2e-11-2f-test

clean-python3-2e-11-2e-4-2f-lib-2f-python3-2e-11-2f-test:
	-$(RM) ./python3.11.4/lib/python3.11/test/_testcppext.d ./python3.11.4/lib/python3.11/test/_testcppext.o

.PHONY: clean-python3-2e-11-2e-4-2f-lib-2f-python3-2e-11-2f-test

