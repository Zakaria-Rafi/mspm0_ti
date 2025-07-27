/*#include <Arduino.h>
#include "driver/twai.h"

void setup() {
  Serial.begin(115200);
  delay(1000);
  Serial.println("CAN Sender Init");

  // CAN TX = GPIO 5 (D5), CAN RX = GPIO 4 (D4)
  twai_general_config_t g_config = TWAI_GENERAL_CONFIG_DEFAULT((gpio_num_t)5, (gpio_num_t)4, TWAI_MODE_NORMAL);
  twai_timing_config_t t_config = TWAI_TIMING_CONFIG_250KBITS();
  twai_filter_config_t f_config = TWAI_FILTER_CONFIG_ACCEPT_ALL();

  if (twai_driver_install(&g_config, &t_config, &f_config) == ESP_OK) {
    Serial.println("CAN driver installed");
  } else {
    Serial.println("Driver install failed");
    return;
  }

  if (twai_start() == ESP_OK) {
    Serial.println("CAN started");
  } else {
    Serial.println("Failed to start CAN");
    return;
  }
}

void loop() {
  twai_message_t msg;
  msg.identifier = 0x321;
  msg.extd = 0;
  msg.rtr = 0;
  msg.data_length_code = 8;

  // Fill with specific 8 bytes — customize as needed
  msg.data[0] = 0xDE;
  msg.data[1] = 0xAD;
  msg.data[2] = 0xBE;
  msg.data[3] = 0xEF;
  msg.data[4] = 0x12;
  msg.data[5] = 0x34;
  msg.data[6] = 0x56;
  msg.data[7] = 0x78;

  if (twai_transmit(&msg, pdMS_TO_TICKS(1000)) == ESP_OK) {
    Serial.println("Message sent: DE AD BE EF 12 34 56 78");
  } else {
    Serial.println("Message send failed!");
  }

  delay(1000);
}*/

#include <Arduino.h>
#include "driver/twai.h"

void setup() {
  Serial.begin(115200);
  delay(1000);
  Serial.println("CAN Receiver Init");

  // Use GPIO 5 (TX) and GPIO 4 (RX)
  twai_general_config_t g_config = TWAI_GENERAL_CONFIG_DEFAULT((gpio_num_t)5, (gpio_num_t)4, TWAI_MODE_NORMAL);
  twai_timing_config_t t_config = TWAI_TIMING_CONFIG_250KBITS();
  twai_filter_config_t f_config = TWAI_FILTER_CONFIG_ACCEPT_ALL();

  if (twai_driver_install(&g_config, &t_config, &f_config) == ESP_OK) {
    Serial.println("CAN driver installed");
  } else {
    Serial.println("Driver install failed");
    return;
  }

  if (twai_start() == ESP_OK) {
    Serial.println("CAN started");
  } else {
    Serial.println("Failed to start CAN");
    return;
  }
}

unsigned long lastMsgTime = 0; // Timestamp of the last received message

void loop() {
  twai_message_t msg;
  if (twai_receive(&msg, pdMS_TO_TICKS(1000)) == ESP_OK) {
    unsigned long now = millis();
    unsigned long delta = (lastMsgTime == 0) ? 0 : now - lastMsgTime;
    lastMsgTime = now;

    Serial.print("Timestamp: ");
    Serial.print(now);
    Serial.println(" ms");

    Serial.print("Time since last message: ");
    Serial.print(delta);
    Serial.println(" ms");

    Serial.print("Received ID: 0x");
    Serial.println(msg.identifier, HEX);

    Serial.print("Data: ");
    for (int i = 0; i < msg.data_length_code; i++) {
      Serial.print(msg.data[i], HEX);
      Serial.print(" ");
    }
    Serial.println();
  } else {
    // No message received in 1 second timeout
    Serial.println("Waiting... no message");
  }

  // No delay here — loop runs as fast as twai_receive allows
}
