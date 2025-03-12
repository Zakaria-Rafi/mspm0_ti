################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
Arduino/SPI/%.o: ../Arduino/SPI/%.ino $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-armllvm_4.0.2.LTS/bin/tiarmclang.exe" -c @"device.opt"  -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O2 -I"C:/Users/rafiz/OneDrive/Desktop/mspm0_ti/SPI" -I"C:/Users/rafiz/OneDrive/Desktop/mspm0_ti/SPI/Debug" -I"C:/ti/mspm0_sdk_2_04_00_06/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_04_00_06/source" -gdwarf-3 -MMD -MP -MF"Arduino/SPI/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


