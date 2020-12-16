int pushButton = 2;


void setup() {
  
  Serial.begin(9600);
  
  pinMode(pushButton, INPUT);
}


void loop() {
  
  int buttonState = digitalRead(pushButton);
          

   if (buttonState == HIGH) { 
    Serial.write(1);      
 } else {   
   Serial.write(0);      
  }
}
