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
  }
}
