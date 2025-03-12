#define UART_BAUD 9600  

void setup() {
    Serial.begin(UART_BAUD);
    Serial.println("Arduino Ready!");  
}

void loop() {
    if (Serial.available() > 0) {  
        String receivedData = Serial.readStringUntil('\n'); // Read until newline
        Serial.print("Received: ");
        Serial.println(receivedData);  
        
        // Send response to MSPM0
        Serial.println("Hello MSPM0!");  
    }
}
