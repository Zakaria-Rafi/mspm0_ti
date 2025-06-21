#include "ti/driverlib/dl_gpio.h"
#include "ti_msp_dl_config.h"
#define PWM_TOP_COUNT 32000  // for 1 kHz PWM at 32 MHz clock

// Function declarations (prototypes)
void Special_mode(int Time_In_ms);
void sendWord_SpecialMode(uint16_t data);
void Normal_mode(int Time_In_ms);
void sendWord_Normal(uint16_t data);
void delayMicroseconds(uint32_t ms);
void analogWrite(uint8_t duty_percent);     // <-- NEW
void disableAnalogWrite(void);              // <-- NEW
void delay_ms(uint32_t ms);

void delayMicroseconds(uint32_t us)
{
    // MSPM0G3507 runs at 32 MHz by default
    // Each loop iteration takes approximately 3 cycles
    // 32 cycles per microsecond at 32 MHz
    volatile uint32_t cycles = us * 10; // Adjust this multiplier based on testing
    
    while (cycles--) {
        // This empty loop will be executed 'cycles' times
        // The 'volatile' keyword prevents compiler optimization
    }
}

void analogWrite(uint8_t value_0_to_255) {
    if (value_0_to_255 > 255) value_0_to_255 = 255;

    // Map 0–255 to 0–PWM_TOP_COUNT
    uint32_t compareValue = (value_0_to_255 * PWM_TOP_COUNT) / 255;

    DL_TimerA_setCaptureCompareValue(PWM_1_INST, compareValue, DL_TIMER_CC_0_INDEX);
}
void delay_ms(uint32_t ms) {
    for (uint32_t i = 0; i < ms * 1000; i++) {
        __NOP();  // Not accurate but okay for visible effects
    }
}

void disableAnalogWrite(void) {
    DL_TimerA_stopCounter(PWM_1_INST);
}


int main(void) {
    SYSCFG_DL_init();
    // Initialize pins (make sure they're in proper state)
    DL_GPIO_clearPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN); // SDI low
    DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN); // CLK low
    DL_GPIO_clearPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN);    // LE low
    DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);      // OE high (outputs disabled)
    
    while (1) {
        Special_mode(1);
        delayMicroseconds(1);
        sendWord_Normal(0x000F);
        delayMicroseconds(1);
        Normal_mode(2);
        delayMicroseconds(1);
        sendWord_Normal(0x4444);
        delayMicroseconds(1);
        analogWrite(0);
        delayMicroseconds(5);

        /*
        DL_GPIO_setPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN);   // 1
        DL_GPIO_clearPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN); // 0

        DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);   // 1
        DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN); // 0

        DL_GPIO_setPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN);   // 1
        DL_GPIO_clearPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN); // 0

        DL_GPIO_setPins(GPIO_SDO_PORT, GPIO_SDO_PIN_SDO_PIN);   // 1
        DL_GPIO_clearPins(GPIO_SDO_PORT, GPIO_SDO_PIN_SDO_PIN); // 0

        DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);   // 1
        DL_GPIO_clearPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN); // 0
        */
    }
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

void Normal_mode(int Time_In_ms)
{
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

    // OE low
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

void Special_mode(int Time_In_ms)
{
    // CLK low
    DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

    // OE high
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

    // OE low (output enable active)
    DL_GPIO_clearPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);
    delayMicroseconds(3);

    // OE high (output disable)
    DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);
}