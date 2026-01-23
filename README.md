# MSPM0-TI Library Development

## Overview

This project is focused on the development of a comprehensive and user-friendly embedded software library designed to simplify and demonstrate the use of all functionalities provided by **Texas Instruments' MSPM0** series microcontrollers — specifically:

- **MSPM0G3507**
- **MSPM0G3107**

Our ultimate goal is to ensure robust **CAN Bus** communication support, configurable to operate reliably with both **internal** and **external clocks**, making it ideal for real-time embedded systems.

---

## Project Goals

1. **Feature Coverage**  
   Develop a unified library covering all major features of MSPM0G3507 and MSPM0G3107 including:
   - GPIO
   - Timers
   - ADC/DAC
   - UART, SPI, I2C
   - PWM
   - Interrupts
   - Power Management

2. **CAN Bus Communication**
   - Implement reliable CAN Bus driver support
   - Ensure compatibility with internal and external clock configurations
   - Provide example configurations and performance testing

3. **Developer-Friendly API**
   - Abstract complex configurations
   - Use intuitive and documented APIs
   - Include examples and test cases

---

## Target Hardware

- [MSPM0G3507VQFN-32(RHB)](https://fr.aliexpress.com/item/1005008442737614.html?spm=a2g0o.productlist.main.1.6054d8f3dc9vyG&algo_pvid=81e46d48-9211-4297-a850-c569ef857294&algo_exp_id=81e46d48-9211-4297-a850-c569ef857294-0&pdp_ext_f=%7B"order"%3A"79"%2C"eval"%3A"1"%7D&pdp_npi=4%40dis%21EUR%212.50%212.50%21%21%2120.23%2120.23%21%40210384b217444844993436362ef6a9%2112000045155403440%21sea%21FR%210%21ABX&curPageLogUid=fgIJg5ymxxlM&utparam-url=scene%3Asearch%7Cquery_from%3A)
- [MSPM0G3107-based custom or development boards]//Schematic and PCB
- [MSPM0G3507 LaunchPad™ Development Kit](https://www.ti.com/tool/MSPM0G3507LP)

---

## Feature Status

| Feature          | Status        | Notes                                           |
|------------------|---------------|-------------------------------------------------|
| **GPIO (Blink)**         | ✅ Done        | LED blinking test completed                    |
| **I2C**                  | ✅ Done        | Verified communication with Arduino            |
| **SPI**                  | ✅ Done        | Verified communication with Arduino            |
| **UART (Serial Comm)**  | ✅ Done        | Serial tested via Arduino and PC terminal      |
| Timers/PWM              | ✅ Done     | For pulse generation and timing                |
| ADC/DAC                 | ✅ Done     | Analog input and output                        |
| Interrupts              |✅ Done     | External pins and peripheral-triggered         |
| CAN Bus (INT/EXT Clock) | ✅ Done | Robust, clock-independent communication driver |

---

## Getting Started

1. **Clone the Repository**

   ```bash
   git clone git@github.com:Zakaria-Rafi/mspm0_ti.git
   ```

2. **Toolchain Requirements**
   - TI Code Composer Studio (CCS)
   - TI SDK for MSPM0 (MCU+ SDK)
   - CAN transceiver for CAN testing

3. **First Build**
   - Open the project in CCS
   - Select the correct target device
   - Build and flash basic examples (e.g., Blink or UART)

---

## Contribution

Want to help? Contributions are welcome! Open an issue to suggest a feature or submit a pull request if you’ve implemented something useful.

---

## License

This project will be released under the MIT License or another OSI-approved license.

---

## Author

**Zakaria Rafi**  
Embedded Systems Developer
Studying AI and IoT
Passionate about real-time systems, low-level programming, and building 
open-source tools for the embedded community.

---

Let me know if you'd like to include:
- Links to each example code
- Pin configuration or connection diagrams
- Detailed usage instructions for Arduino testing

Happy to expand it further!
enjoy 
