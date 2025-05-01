
#include "ti_msp_dl_config.h"

volatile bool error;

int main(void)
{
    DL_MCAN_TxBufElement txMsg;
    DL_MCAN_ProtocolStatus status;

    SYSCFG_DL_init();

    /* Initialize message to transmit */
    txMsg.id = ((uint32_t)(0x4)) << 18U;  // Standard Identifier
    txMsg.rtr = 0U;   // Data frame
    txMsg.xtd = 0U;   // 11-bit standard identifier
    txMsg.esi = 0U;   // Error State Indicator
    txMsg.dlc = 8U;   // Sending 8 bytes
    txMsg.brs = 1U;   // Bit Rate Switching enabled
    txMsg.fdf = 1U;   // CAN FD format
    txMsg.efc = 1U;   // Store Tx events
    txMsg.mm = 0xAAU; // Message Marker

    /* Initialize Data */
    txMsg.data[0] = 0x11;
    txMsg.data[1] = 0x22;
    txMsg.data[2] = 0x33;
    txMsg.data[3] = 0x44;
    txMsg.data[4] = 0x55;
    txMsg.data[5] = 0x66;
    txMsg.data[6] = 0x77;
    txMsg.data[7] = 0x88;

    /* Wait for CAN module to enter normal operation mode */
    while (DL_MCAN_OPERATION_MODE_NORMAL != DL_MCAN_getOpMode(MCAN0_INST))
        ;

    while (1) {
        /* Get CAN protocol status */
        DL_MCAN_getProtocolStatus(MCAN0_INST, &status);

        /* Check for errors */
        if (status.busOffStatus || status.warningStatus || status.errPassive) {
            error = true;
            continue; // Skip sending if error detected
        }

        /* Write Tx Message to the Message RAM */
        DL_MCAN_writeMsgRam(MCAN0_INST, DL_MCAN_MEM_TYPE_BUF, 0U, &txMsg);

        /* Add request for transmission */
        DL_MCAN_TXBufAddReq(MCAN0_INST, 0U);

        /* Small delay to prevent continuous flooding */
        for (volatile uint32_t i = 0; i < 12000000; i++);  // ~1 second at 48 MHz
    }
}
