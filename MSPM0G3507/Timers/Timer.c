

#include "ti_msp_dl_config.h"

int main(void)
{
    SYSCFG_DL_init();

    NVIC_EnableIRQ(TIMER_0_INST_INT_IRQN);
    DL_SYSCTL_enableSleepOnExit();

    DL_TimerA_startCounter(TIMER_0_INST);

    while (1) {
        __WFI();
    }
}

void TIMER_0_INST_IRQHandler(void)
{
    switch (DL_TimerA_getPendingInterrupt(TIMER_0_INST)) {
        case DL_TIMERA_IIDX_REPEAT_COUNT:
            DL_GPIO_togglePins(LED1_PORT, LED1_PIN1_PIN);
            break;
        default:
            break;
    }
}
