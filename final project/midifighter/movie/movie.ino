int switchPin = 4;                       // Switch connected to pin 4
int switchPin1 = 5;
int switchPin2 = 6;
int switchPin3 = 7;
int  val;
void setup() {
  pinMode(switchPin, INPUT_PULLUP);             // Set pin 0 as an input
  Serial.begin(9600);                    // Start serial communication at 9600 bps
}

void loop() {
  if (digitalRead(switchPin) == HIGH) {  // If switch is ON,
    //Serial.print(1);               // send 1 to Processing
    Serial.write(1);

    delay(5);
  }

  if (digitalRead(switchPin1) == HIGH) {  // If switch is ON,
    //Serial.print(2);               // send 1 to Processing
   Serial.write(2);
    
   delay(5);                            // Wait 100 milliseconds

  //Serial. println(val);
}

 if (digitalRead(switchPin2) == HIGH) {  // If switch is ON,
    //Serial.print(3);               // send 1 to Processing
   Serial.write(3);
    
   delay(100);                            // Wait 100 milliseconds

  //Serial. println(val);
}

 if (digitalRead(switchPin3) == HIGH) {  // If switch is ON,
    //Serial.print(4);               // send 1 to Processing
   Serial.write(4);
    
   delay(100);                            // Wait 100 milliseconds

  //Serial. println(val);
}

}
