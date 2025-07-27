#include "ti/driverlib/dl_gpio.h"
#include "ti_msp_dl_config.h"

void delay_ms(unsigned int ms) {
    for (unsigned int i = 0; i < ms * 32000; i++) {
        __NOP();
    }
}
int main(void) {
  SYSCFG_DL_init();

  while (1) {
    // Turn both LEDs ON
    DL_GPIO_clearPins(LED1_PORT, LED1_PIN_1_PIN);

    delay_ms(1000); // 1-second delay

    // Turn both LEDs OFF
    DL_GPIO_setPins(LED1_PORT, LED1_PIN_1_PIN);

    delay_ms(1000); // 1-second delay
  }
}
