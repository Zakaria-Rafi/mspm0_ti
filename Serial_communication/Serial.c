//git hub
#include "ti_msp_dl_config.h"

// Global variables
volatile unsigned int delay_times = 0;
volatile unsigned char uart_data = 0;

// Function declarations
void delay_ms(unsigned int ms);  // Custom delay function
void uart0_send_char(char ch);   // Function to send a character via UART
void uart0_send_string(char* str); // Function to send a string via UART

// Main function
int main(void)
{
    // Initialize the system configuration (make sure this is correct for your setup)
    SYSCFG_DL_init();
    
    // Clear UART interrupt flag and enable UART interrupt
    NVIC_ClearPendingIRQ(UART_0_INST_INT_IRQN);
    NVIC_EnableIRQ(UART_0_INST_INT_IRQN);
    
    // Main loop
    while (1)
    {
        uart0_send_string("Hello Arduino!\n");  // Send the test message
        delay_ms(10000);  // Delay 1000 ms (1 second)
        
        // Add more code if necessary to handle other logic
        
    }
}

// Custom delay function (using software loop)
void delay_ms(unsigned int ms) 
{
    volatile unsigned int i, j;
    for (i = 0; i < ms; i++) {         // Loop for each millisecond
        for (j = 0; j < 8000; j++) {   // Loop to create delay
            __asm__("nop");             // No Operation (NOP), which takes one cycle
        }
    }
}

// Send a single character via UART
void uart0_send_char(char ch)
{
    while (DL_UART_isBusy(UART_0_INST) == true);  // Wait for UART to be ready
    DL_UART_Main_transmitData(UART_0_INST, ch);   // Send the character
}

// Send a string via UART
void uart0_send_string(char* str)
{
    while (*str != 0)  // Loop until the null terminator is reached
    {
        uart0_send_char(*str++);  // Send the character and increment the pointer
    }
}

// UART interrupt service function for receiving data
void UART_0_INST_IRQHandler(void)
{
    if (DL_UART_getPendingInterrupt(UART_0_INST) == DL_UART_IIDX_RX)
    {
        uart_data = DL_UART_Main_receiveData(UART_0_INST);  // Read the received data
        uart0_send_char(uart_data);  // Echo the received data back (optional)
    }
}

// SysTick timer interrupt handler to manage delay counts
void SysTick_Handler(void)
{
    if (delay_times != 0)
    {
        delay_times--;
    }
}
