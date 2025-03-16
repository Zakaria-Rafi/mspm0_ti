# I2C Communication Using MSPM0G350x  

This repository contains a simple implementation of I2C communication using the MSPM0G350x microcontroller. The code configures the microcontroller as an I2C controller that transmits a predefined data packet to a target device.  

## Overview  

The program initializes the I2C peripheral and continuously sends a 16-byte data packet to an I2C target with address `0x48`. The transmission status is managed through an interrupt-driven approach, ensuring reliable data transfer.  

## Features  

- Configures MSPM0G350x as an I2C controller  
- Sends a fixed 16-byte data packet to an I2C target  
- Uses interrupts to handle transmission status  
- Implements error handling and LED indication for transfer status  

## Code Breakdown  

### 1. **Includes and Definitions**  

The code includes necessary header files and defines key parameters:  

- `I2C_TX_MAX_PACKET_SIZE (16)`: Defines the maximum size of the transmission packet.  
- `I2C_TARGET_ADDRESS (0x48)`: Specifies the address of the I2C target device.  
- `gTxPacket[]`: Stores the data to be transmitted.  
- `gI2cControllerStatus`: Enum to track the I2C communication status.  

### 2. **Main Function**  

The `main()` function initializes the system and begins transmitting data over I2C in an infinite loop:  

- **Initialization**:  
  - Calls `SYSCFG_DL_init()` to configure the system.  
  - Enables the I2C interrupt.  
  - Sets an LED to indicate the start of transmission.  
  - Disables sleep-on-exit mode.  

- **Transmission Process**:  
  - Loads data into the I2C TX FIFO.  
  - Starts an I2C transfer to the target device.  
  - Waits for the transfer to complete using interrupts.  
  - Checks for errors and halts execution in case of a failure.  
  - Introduces a delay before the next transmission cycle.  

### 3. **Interrupt Handler (`I2C_0_INST_IRQHandler`)**  

Handles I2C interrupts and updates the transmission status accordingly:  

- `DL_I2C_IIDX_CONTROLLER_TX_DONE`: Marks transmission as complete.  
- `DL_I2C_IIDX_CONTROLLER_TXFIFO_TRIGGER`: Refills the TX FIFO if needed.  
- `DL_I2C_IIDX_CONTROLLER_ARBITRATION_LOST` or `DL_I2C_IIDX_CONTROLLER_NACK`: Sets an error status.  

## Hardware Requirements  

- **TI MSPM0G350x Development Board**  
- **I2C Target Device** (e.g., an EEPROM or sensor) Arduino was Used here to read I2C send
- **Connection Wires**  

## Configuration Images  
LED PIN :
![image](https://github.com/user-attachments/assets/5efb9ecc-8225-443b-9ae4-cc0f4ab2afe8)
Enable Clock Tree on SYSCTL :
![image](https://github.com/user-attachments/assets/731df582-2e92-40be-9373-7d3e18616ff5)
I2C Configuration :
Add I2C Pins also add Bus Speed:
![image](https://github.com/user-attachments/assets/9fcee8e3-2b10-4c2f-a808-931363493b6f)
Add RX and TX FIFO <= 1 bytes
![image](https://github.com/user-attachments/assets/d389a6cb-8054-4bc9-838b-b5e2c234778a)
Add Controller Interrupts:
![image](https://github.com/user-attachments/assets/e7a4f084-fb01-4749-88cc-2825bf73b547)
Finally Choice Your PINs for I2C :
![image](https://github.com/user-attachments/assets/8faa0861-eb43-479c-8b10-c7e6ec896f60)
Enable EVENT to use Interruption:
![image](https://github.com/user-attachments/assets/c79a5fee-7a74-4056-84c7-5c686ca2e43b)





## Expected Behavior  

- The microcontroller continuously transmits a 16-byte packet to the I2C target.  
- The LED turns on at the start of the transfer.  
- If an error occurs, execution halts at the breakpoint (`__BKPT(0)`).  

## License  

This project is open-source. Feel free to modify and distribute.

