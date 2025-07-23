#include "ti/driverlib/dl_gpio.h"
#include "ti_msp_dl_config.h"
#define PWM_TOP_COUNT 32000 // for 1 kHz PWM at 32 MHz clock

// Function declarations (prototypes)
void Special_mode(int Time_In_ms);
void sendWord_SpecialMode(uint16_t data);
void Normal_mode(int Time_In_ms);
void sendWord_Normal(uint16_t data);
void delayMicroseconds(uint32_t ms);
void delay_ms(unsigned int ms);
void runSmoothPWMFade(uint32_t total_cycles, uint32_t fade_speed, uint8_t min_bright, uint8_t max_bright);

// OE Pin PWM Control Functions
void OE_enablePWM(void);            // Enable PWM mode on OE pin
void OE_disablePWM(void);           // Disable PWM, return to digital control
void OE_setPWM(uint8_t brightness); // Set PWM brightness (0-255)
void OE_updatePWM(void);            // Update PWM state (call frequently)
void OE_digitalHigh(void);          // Set OE pin high (digital mode)
void OE_digitalLow(void);           // Set OE pin low (digital mode)
void delayMicroseconds(uint32_t us)
{
    // MSPM0G3507 runs at 32 MHz by default
    // Each loop iteration takes approximately 3 cycles
    // 32 cycles per microsecond at 32 MHz
    volatile uint32_t cycles = us * 10; // Adjust this multiplier based on testing

    while (cycles--)
    {
        // This empty loop will be executed 'cycles' times
        // The 'volatile' keyword prevents compiler optimization
    }
}
void delay_ms(unsigned int ms)
{
    volatile unsigned int i, j;
    for (i = 0; i < ms; i++)
    {
        for (j = 0; j < 4000; j++)
        {
            __asm__("nop");
        }
    }
}

// OE Pin PWM Control Functions Implementation
volatile bool OE_PWM_enabled = false;
volatile uint8_t OE_PWM_brightness = 0;
volatile uint8_t OE_PWM_counter = 0;

void OE_enablePWM(void)
{
    // Simple fast software PWM
    OE_PWM_enabled = true;
    OE_PWM_counter = 0;
    // Make sure pin is configured as GPIO output
    DL_GPIO_initDigitalOutput(GPIO_OE_PIN_OE_IOMUX);
}

void OE_disablePWM(void)
{
    OE_PWM_enabled = false;
    // Set pin high by default (outputs disabled)
    DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);
}

void OE_setPWM(uint8_t brightness)
{
    // brightness: 0 = always off (OE always high), 255 = always on (OE always low)
    OE_PWM_brightness = brightness;
}

void OE_updatePWM(void)
{
    // Fast software PWM - call this as frequently as possible
    if (OE_PWM_enabled)
    {
        OE_PWM_counter++;

        if (OE_PWM_counter < OE_PWM_brightness)
        {
            // OE low = outputs enabled (bright)
            DL_GPIO_clearPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);
        }
        else
        {
            // OE high = outputs disabled (dim)
            DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);
        }

        // Reset counter after full cycle (256 steps for 0-255 range)
        if (OE_PWM_counter >= 255)
        {
            OE_PWM_counter = 0;
        }
    }
}

void OE_digitalHigh(void)
{
    if (!OE_PWM_enabled)
    {
        DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);
    }
}

void OE_digitalLow(void)
{
    if (!OE_PWM_enabled)
    {
        DL_GPIO_clearPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);
    }
}


// Function to run fixed PWM (constant brightness) for a specified duration
void runFixedPWM(uint8_t brightness_level, uint32_t duration_cycles)
{
    OE_enablePWM();
    OE_setPWM(brightness_level);

    for (uint32_t i = 0; i < duration_cycles; i++)
    {
        // Update PWM state frequently for smooth brightness control
        for (int pwm_fast = 0; pwm_fast < 200; pwm_fast++)
        {
            OE_updatePWM();
        }
        // No brightness changes - just maintain the fixed level
    }

    OE_disablePWM();
}

// Function to run smooth brightness fading with proper variable management
void runSmoothPWMFade(uint32_t total_cycles, uint32_t fade_speed, uint8_t min_bright, uint8_t max_bright)
{
    static uint8_t brightness = 0;
    static bool increasing = true;
    static uint16_t pwm_update_counter = 0;
    static bool first_run = true;
    
    // Initialize brightness only on first run
    if (first_run) {
        brightness = min_bright;
        first_run = false;
    }
    
    // Enable PWM mode for brightness control
    OE_enablePWM();
    
    // PWM brightness control loop
    for (uint32_t i = 0; i < total_cycles; i++) {
        // Update PWM state frequently for smooth brightness control
        for (int pwm_fast = 0; pwm_fast < 200; pwm_fast++) {
            OE_updatePWM();
        }
        
        // Update brightness gradually for smooth fading
        if (pwm_update_counter++ > fade_speed) {
            pwm_update_counter = 0;
            
            if (increasing) {
                brightness += 1;
                if (brightness >= max_bright) increasing = false;
            } else {
                brightness -= 1;
                if (brightness <= min_bright) increasing = true;
            }
            
            OE_setPWM(brightness);
        }
    }
    
    // Switch back to digital control
    OE_disablePWM();
}

int main(void)
{
    SYSCFG_DL_init();
    // Initialize pins (make sure they're in proper state)
    DL_GPIO_clearPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN); // SDI low
    DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN); // CLK low
    DL_GPIO_clearPins(GPIO_LE_PORT, GPIO_LE_PIN_LE_PIN);    // LE low
    DL_GPIO_setPins(GPIO_OE_PORT, GPIO_OE_PIN_OE_PIN);      // OE high (outputs disabled)

    while (1)
    {
        // Pattern 1: Fixed PWM mode (0x2222) - constant brightness only
        Special_mode(1);
        delayMicroseconds(1);
        sendWord_SpecialMode(0x000F);
        delayMicroseconds(1);
        Normal_mode(2);
        delayMicroseconds(1);
        sendWord_Normal(0x2222);
        delayMicroseconds(1);

        // Use the new smooth PWM fade function
runSmoothPWMFade(5000, 10, 0, 255);
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

void sendWord_Normal(uint16_t data)
{
    for (int i = 15; i >= 0; i--)
    {
        // CLK low
        DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN); // 0

        // Set SDI bit
        if (data & (1 << i))
        {
            DL_GPIO_setPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN); // 1
        }
        else
        {
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
    OE_digitalHigh();
    delayMicroseconds(Time_In_ms);

    // CLK high
    DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
    delayMicroseconds(Time_In_ms);

    // CLK low
    DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

    // OE low
    OE_digitalLow();
    delayMicroseconds(Time_In_ms);

    // CLK high
    DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
    delayMicroseconds(Time_In_ms);

    // CLK low
    DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

    // OE high
    OE_digitalHigh();
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
    OE_digitalHigh();
    delayMicroseconds(Time_In_ms);

    // CLK high
    DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
    delayMicroseconds(Time_In_ms);

    // OE low
    OE_digitalLow();

    // CLK low
    DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);
    delayMicroseconds(Time_In_ms);

    // CLK high
    DL_GPIO_setPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

    // OE high
    OE_digitalHigh();
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

void sendWord_SpecialMode(uint16_t data)
{
    for (int i = 15; i >= 0; i--)
    {
        // CLK low
        DL_GPIO_clearPins(GPIO_CLK_PORT, GPIO_CLK_PIN_CLK_PIN);

        // Set SDI bit
        if (data & (1 << i))
        {
            DL_GPIO_setPins(GPIO_SDI_PORT, GPIO_SDI_PIN_SDI_PIN);
        }
        else
        {
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
    OE_digitalLow();
    delayMicroseconds(3);

    // OE high (output disable)
    OE_digitalHigh();
}