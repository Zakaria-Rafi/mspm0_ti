#include "ti/driverlib/dl_gpio.h"
#include "ti_msp_dl_config.h"

void delay_ms(unsigned int ms) {
  volatile unsigned int i, j;
  for (i = 0; i < ms; i++) {
    for (j = 0; j < 8000; j++) {
      __asm__("nop");
    }
  }
}

int main(void) {
  SYSCFG_DL_init();

  while (1) {
    // Turn both LEDs ON
    DL_GPIO_clearPins(LED1_PORT, LED1_PIN_1_PIN);
    DL_GPIO_setPins(LED2_PORT, LED2_PIN_2_PIN);

    delay_ms(100); // 1-second delay

    // Turn both LEDs OFF
    DL_GPIO_setPins(LED1_PORT, LED1_PIN_1_PIN);
    DL_GPIO_clearPins(LED2_PORT, LED2_PIN_2_PIN);

    delay_ms(100); // 1-second delay
  }
}
