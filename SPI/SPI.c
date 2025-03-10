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

int main(void) {
    SYSCFG_DL_init(); // Initialize system peripherals

    uint16_t sendData = 0xA5A5;  // Example data to send
    uint16_t receivedData;

    // Example: Send and receive a single byte
    receivedData = SPI_Transfer(sendData);

    // Example: Send multiple bytes
    uint16_t txBuffer[3] = {0x1234, 0x5678, 0x9ABC};
    SPI_SendBuffer(txBuffer, 3);

    // Example: Receive multiple bytes
    uint16_t rxBuffer[3];
    SPI_ReceiveBuffer(rxBuffer, 3);

    while (1) {
        // Main loop
    }
}
