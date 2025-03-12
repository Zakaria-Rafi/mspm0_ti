#include "ti_msp_dl_config.h"
#include <stdint.h>

/* SPI Send (Blocking) */
void SPI_Send(uint16_t data) {
    DL_SPI_transmitDataBlocking16(SPI_INST, data);
}

/* SPI Receive (Blocking) */
uint16_t SPI_Receive(void) {
    return DL_SPI_receiveDataBlocking16(SPI_INST);
}

/* SPI Send and Receive */
uint16_t SPI_Transfer(uint16_t data) {
    SPI_Send(data);
    return SPI_Receive();
}

/* SPI Send Multiple Bytes */
void SPI_SendBuffer(uint16_t *buffer, uint16_t length) {
    for (uint16_t i = 0; i < length; i++) {
        SPI_Send(buffer[i]);
    }
}

/* SPI Receive Multiple Bytes */
void SPI_ReceiveBuffer(uint16_t *buffer, uint16_t length) {
    for (uint16_t i = 0; i < length; i++) {
        buffer[i] = SPI_Receive();
    }
}
void delay_ms(unsigned int ms) 
{
    volatile unsigned int i, j;
    for (i = 0; i < ms; i++) {         // Loop for each millisecond
        for (j = 0; j < 8000; j++) {   // Loop to create delay
            __asm__("nop");             // No Operation (NOP), which takes one cycle
        }
    }
}

int main(void) {
    SYSCFG_DL_init(); // Initialize system peripherals
    uint16_t sendData = 0x4D4F;  // Example data to send
    uint16_t receivedData;



    while (1) {
    // Turn both LEDs ON
    DL_GPIO_clearPins(LED1_PORT, LED1_PIN_1_PIN);

    delay_ms(100); // 1-second delay
    SPI_Transfer(sendData);

    DL_GPIO_setPins(LED1_PORT, LED1_PIN_1_PIN);

    delay_ms(100); // 1-second delay

    }
}
