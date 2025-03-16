#include <Wire.h>

#define I2C_SLAVE_ADDRESS 0x48  // Same as MSPM0G350x master

uint8_t receivedData[16];  // Buffer to store received data

void setup() {
    Wire.begin(I2C_SLAVE_ADDRESS);  // Set Arduino as I2C slave
    Wire.onReceive(receiveEvent);   // Register receive callback
    Serial.begin(115200);           // Debugging via Serial Monitor
}

void loop() {
    delay(100);  // Just to avoid excessive CPU usage
}

// 📌 Callback: Runs when master sends data
void receiveEvent(int bytes) {
    int i = 0;
    while (Wire.available() && i < 16) {
        receivedData[i++] = Wire.read();  // Read each byte
    }
    
    Serial.print("Received: ");
    for (int j = 0; j < i; j++) {
        Serial.print(receivedData[j], HEX);
        Serial.print(" ");
    }
    Serial.println();
}
