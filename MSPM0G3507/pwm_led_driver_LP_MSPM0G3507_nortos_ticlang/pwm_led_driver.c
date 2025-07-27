/*
 * Copyright (c) 2020, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
 

#include "ti_msp_dl_config.h"

#define PWM_PERIOD 255 // Arduino analogWrite uses 8-bit (0-255)
int duty = 0; // 0-255
int fade_dir = 1; // 1 = up, 0 = down

// Helper to set duty cycle (0-255)
void set_pwm_duty(int value) {
    if (value < 0) value = 0;
    if (value > PWM_PERIOD) value = PWM_PERIOD;
    DL_TimerA_setCaptureCompareValue(PWM_1_INST, value, DL_TIMER_CC_0_INDEX);
}

// Simple delay function (blocking, not precise, but Arduino-like)
void delay_ms(unsigned int ms) {
    for (unsigned int i = 0; i < ms * 4000; i++) {
        __NOP();
    }
}


int main(void) {
    SYSCFG_DL_init();

    // Set PWM period to 255 (for 8-bit, Arduino-like)
    DL_TimerA_setLoadValue(PWM_1_INST, PWM_PERIOD);
    set_pwm_duty(0);

    DL_TimerA_startCounter(PWM_1_INST);

    // Arduino-like fade in/out in main loop
    while (1) {
        for (duty = 0; duty <= PWM_PERIOD; duty++) {
            set_pwm_duty(duty);
            delay_ms(5); // Adjust for fade speed
        }
        for (duty = PWM_PERIOD; duty >= 0; duty--) {
            set_pwm_duty(duty);
            delay_ms(5);
        }
    }
}


// Interrupt handler no longer needed for PWM fade logic
void PWM_1_INST_IRQHandler(void) {
    // You can handle other timer events here if needed
    (void)DL_TimerA_getPendingInterrupt(PWM_1_INST);
}
