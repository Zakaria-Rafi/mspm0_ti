#include "ti/driverlib/dl_gpio.h"
#include "ti_msp_dl_config.h"
// Arduino-like 8-bit PWM
#define PWM_PERIOD 255 // 8-bit PWM (0-255)

// Function declarations (prototypes)
void Special_mode(int Time_In_ms);
void sendWord_SpecialMode(uint16_t data);
void Normal_mode(int Time_In_ms);
void sendWord_Normal(uint16_t data);
void delayMicroseconds(uint32_t us);
void delay_ms(unsigned int ms);

// PWM Control Functions
void PWM_enable(void);
void PWM_disable(void);
void PWM_setSpeed(uint16_t speed_delay);
void PWM_setDutyCycleRange(uint8_t min_dc, uint8_t max_dc);

int duty = 0;     // 0-255
int fade_dir = 1; // 1 = up, 0 = down

// Helper to set duty cycle (0-255)
void set_pwm_duty(int value) {
  if (value < 0)
    value = 0;
  if (value > PWM_PERIOD)
    value = PWM_PERIOD;
  DL_TimerA_setCaptureCompareValue(PWM_1_INST, value, DL_TIMER_CC_0_INDEX);
}

// Simple delay function (blocking, not precise, but Arduino-like)
void delay_ms(unsigned int ms) {
  for (unsigned int i = 0; i < ms * 32000; i++) {
    __NOP();
  }
}

// Simple microsecond delay (not precise, but Arduino-like)
void delayMicroseconds(uint32_t us) {
  for (uint32_t i = 0; i < us * 32; i++) { // Adjust multiplier for your clock
    __NOP();
  }
}

int main(void) {
  SYSCFG_DL_init();

  // Initialize pins (make sure they're in proper state)
  DL_GPIO_clearPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN); // SDI low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN); // CLK low
  DL_GPIO_clearPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN);    // LE low
  DL_GPIO_setPins(GPIO_OE_PORT,
                  GPIO_OE_PIN_OE_PIN); // OE high (outputs disabled)

  DL_TimerA_setLoadValue(PWM_1_INST, PWM_PERIOD);
  set_pwm_duty(0);
  DL_TimerA_startCounter(PWM_1_INST);

  // Arduino-like fade in/out in main loop
  while (1) {
    // Setup color pattern once at startup
    Special_mode(1);
    delayMicroseconds(1);
    sendWord_SpecialMode(0x000F);
    delayMicroseconds(1);
    Normal_mode(2);
    delayMicroseconds(1);
    sendWord_Normal(0x2222); // Red pattern
    delayMicroseconds(1);
    set_pwm_duty(255);

    delay_ms(1000);

    Special_mode(1);
    delayMicroseconds(1);
    sendWord_SpecialMode(0x000F);
    delayMicroseconds(1);
    Normal_mode(2);
    delayMicroseconds(1);
    sendWord_Normal(0x4444); // Red pattern
    delayMicroseconds(1);
    set_pwm_duty(255);

    delay_ms(1000);

    /*
    for (duty = 0; duty <= PWM_PERIOD; duty++) {
        set_pwm_duty(duty);
        delay_ms(1); // Adjust for fade speed
    }
    for (duty = PWM_PERIOD; duty >= 0; duty--) {
        set_pwm_duty(duty);
        delay_ms(1);
    }*/
  }
}

// Interrupt handler no longer needed for PWM fade logic
void PWM_1_INST_IRQHandler(void) {
  // You can handle other timer events here if needed
  (void)DL_TimerA_getPendingInterrupt(PWM_1_INST);
}

void sendWord_Normal(uint16_t data) {
  for (int i = 15; i >= 0; i--) {
    // CLK low
    DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN); // 0

    // Set SDI bit
    if (data & (1 << i)) {
      DL_GPIO_setPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN); // 1
    } else {
      DL_GPIO_clearPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN); // 0
    }

    delayMicroseconds(1);

    // CLK high
    DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN); // 1
    delayMicroseconds(1);
  }

  // LE pulse to latch data
  DL_GPIO_setPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN); // 1
  delayMicroseconds(1);
  DL_GPIO_clearPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN); // 0
}

void Normal_mode(int Time_In_ms) {
  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

  // OE high (only control GPIO when PWM is disabled)

  DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);

  delayMicroseconds(Time_In_ms);

  // CLK high
  DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

  // OE low (only control GPIO when PWM is disabled)
  DL_GPIO_clearPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);

  delayMicroseconds(Time_In_ms);

  // CLK high
  DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

  // OE high
  DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);

  delayMicroseconds(Time_In_ms);

  // CLK high
  DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // CLK high
  DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);
}

void Special_mode(int Time_In_ms) {
  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

  // OE high (only control GPIO when PWM is disabled)
  DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);

  delayMicroseconds(Time_In_ms);

  // CLK high
  DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // OE low
  DL_GPIO_clearPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);

  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // CLK high
  DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

  // OE high
  DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);

  delayMicroseconds(Time_In_ms);

  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // CLK high
  DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // LE high
  DL_GPIO_setPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN);

  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // CLK high
  DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);

  // LE low
  DL_GPIO_clearPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN);

  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
  delayMicroseconds(Time_In_ms);
}

void sendWord_SpecialMode(uint16_t data) {
  for (int i = 15; i >= 0; i--) {
    // CLK low
    DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

    // Set SDI bit
    if (data & (1 << i)) {
      DL_GPIO_setPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN);
    } else {
      DL_GPIO_clearPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN);
    }

    delayMicroseconds(1);

    // CLK high
    DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
    delayMicroseconds(1);
  }

  // CLK low
  DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

  // LE high (latch)
  DL_GPIO_setPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN);
  delayMicroseconds(1);

  // LE low
  DL_GPIO_clearPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN);
  delayMicroseconds(3);

  // OE low (output enable active) - only control GPIO when PWM is disabled
  DL_GPIO_clearPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);

  delayMicroseconds(3);

  // OE high (output disable)
  DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);
}