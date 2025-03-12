#include <SPI.h>

// Pin definitions
const int SS_PIN = 10;    // Default SS pin for most Arduinos

// Variables to store received data
volatile uint16_t receivedData = 0;
volatile bool dataReceived = false;

void setup() {
  Serial.begin(115200);   // Initialize serial for debugging
  Serial.println("Arduino SPI Slave Starting...");
  
  // Configure SPI in slave mode
  pinMode(MISO, OUTPUT);  // Set MISO as OUTPUT (required for SPI slave)
  pinMode(MOSI, INPUT);   // Set MOSI as INPUT
  pinMode(SCK, INPUT);    // Set SCK as INPUT
  pinMode(SS_PIN, INPUT); // SS as INPUT
  
  // Initialize SPI in slave mode
  SPCR = (1 << SPE) | (1 << SPIE);  // Enable SPI and SPI interrupts
  
  Serial.println("SPI Slave Initialized - Waiting for data...");
}

// SPI interrupt routine
ISR(SPI_STC_vect) {
  // When the MSB is received, store it temporarily
  static uint8_t highByte = 0;
  static bool receivingHighByte = true;
  
  if (receivingHighByte) {
    // First byte received (MSB of 16-bit value)
    highByte = SPDR;
    receivingHighByte = false;
  } else {
    // Second byte received (LSB of 16-bit value)
    receivedData = (highByte << 8) | SPDR;
    receivingHighByte = true;
    dataReceived = true;
  }
}

void loop() {
  // Check if new data has been received
  if (dataReceived) {
    Serial.print("Received 16-bit data: 0x");
    Serial.println(receivedData, HEX);
    
    // Reset flag
    dataReceived = false;
  }
}