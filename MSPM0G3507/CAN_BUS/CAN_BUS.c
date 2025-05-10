#include "ti_msp_dl_config.h"
// Using Timer as delay
volatile bool error = false;

DL_MCAN_TxBufElement txMsg;

/**
 * Delay in milliseconds using TimerA configured to tick every 1ms.
 */
void delay_ms(uint32_t ms)
{
    for (uint32_t i = 0; i < ms; i++) {
        // Wait until the 1ms flag is set
        while (!DL_TimerA_getRawInterruptStatus(TIMER_0_INST, DL_TIMER_IIDX_REPEAT_COUNT));
        DL_TimerA_clearInterruptStatus(TIMER_0_INST, DL_TIMER_IIDX_REPEAT_COUNT);
    }
}

int main(void)
{
    DL_MCAN_ProtocolStatus status;

    SYSCFG_DL_init();

    // Start 1ms TimerA (already configured in SysConfig)
    DL_TimerA_startCounter(TIMER_0_INST);

    // Prepare CAN message
    txMsg.id  = ((uint32_t)(0x4)) << 18U;  // 11-bit standard ID (ID = 0x4)
    txMsg.rtr = 0U;   // Data frame
    txMsg.xtd = 0U;   // Standard ID
    txMsg.esi = 0U;
    txMsg.dlc = 8U;   // Data Length: 8 bytes
    txMsg.brs = 1U;   // Bit Rate Switching
    txMsg.fdf = 1U;   // CAN FD frame
    txMsg.efc = 1U;   // Event FIFO Control
    txMsg.mm  = 0xAAU;

    // Message payload
    txMsg.data[0] = 0x11;
    txMsg.data[1] = 0x22;
    txMsg.data[2] = 0x33;
    txMsg.data[3] = 0x44;
    txMsg.data[4] = 0x55;
    txMsg.data[5] = 0x66;
    txMsg.data[6] = 0x77;
    txMsg.data[7] = 0x88;

    // Wait until CAN is in Normal Operation mode
    while (DL_MCAN_OPERATION_MODE_NORMAL != DL_MCAN_getOpMode(MCAN0_INST));

    while (1)
    {
        // Check for CAN errors before sending
        DL_MCAN_getProtocolStatus(MCAN0_INST, &status);
        if (status.busOffStatus || status.warningStatus || status.errPassive) {
            error = true;
            continue;
        }

        // Toggle LED for visual activity
        DL_GPIO_togglePins(LED1_PORT, LED1_PIN_1_PIN);

        // Send CAN message
        DL_MCAN_writeMsgRam(MCAN0_INST, DL_MCAN_MEM_TYPE_BUF, 0U, &txMsg);
        DL_MCAN_TXBufAddReq(MCAN0_INST, 0U);

        // Delay ~1000ms (1 second)
        delay_ms(1000);
    }
}

//code with all in timer !
/*

#include "ti_msp_dl_config.h"

volatile bool error;

DL_MCAN_TxBufElement txMsg;

int main(void)
{
    DL_MCAN_ProtocolStatus status;

    SYSCFG_DL_init();

    NVIC_EnableIRQ(TIMER_0_INST_INT_IRQN);
    DL_TimerA_startCounter(TIMER_0_INST);

    // Setup CAN message
    txMsg.id = ((uint32_t)(0x4)) << 18U;
    txMsg.rtr = 0U;
    txMsg.xtd = 0U;
    txMsg.esi = 0U;
    txMsg.dlc = 8U;
    txMsg.brs = 1U;
    txMsg.fdf = 1U;
    txMsg.efc = 1U;
    txMsg.mm = 0xAAU;

    txMsg.data[0] = 0x11;
    txMsg.data[1] = 0x22;
    txMsg.data[2] = 0x33;
    txMsg.data[3] = 0x44;
    txMsg.data[4] = 0x55;
    txMsg.data[5] = 0x66;
    txMsg.data[6] = 0x77;
    txMsg.data[7] = 0x88;

    while (DL_MCAN_OPERATION_MODE_NORMAL != DL_MCAN_getOpMode(MCAN0_INST));

    while (1) {
        // Idle - everything handled in interrupt

        __WFI();

    }
}

void TIMER_0_INST_IRQHandler(void)
{
    static uint16_t counter = 0;
    DL_MCAN_ProtocolStatus status;

    switch (DL_TimerA_getPendingInterrupt(TIMER_0_INST)) {
        case DL_TIMERA_IIDX_REPEAT_COUNT:
            DL_TimerA_clearInterruptStatus(TIMER_0_INST, DL_TIMER_IIDX_REPEAT_COUNT);

            counter++;
            if (counter >= 250) { // 250ms
                counter = 0;

                DL_GPIO_togglePins(LED1_PORT, LED1_PIN_1_PIN);

                DL_MCAN_getProtocolStatus(MCAN0_INST, &status);
                if (status.busOffStatus || status.warningStatus || status.errPassive) {
                    error = true;
                    return;
                }

                DL_MCAN_writeMsgRam(MCAN0_INST, DL_MCAN_MEM_TYPE_BUF, 0U, &txMsg);
                DL_MCAN_TXBufAddReq(MCAN0_INST, 0U);
            }
            break;

        default:
            break;
    }
}



*/