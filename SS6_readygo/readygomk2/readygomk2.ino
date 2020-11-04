const int buttonPin = 2;     // creates variable called buttonPin and assigns value of 2
const int LED =  13;      // creates variable called LED and assigns value of 13
const int LED1 = 12;
const int LED2 = 11;
const int LED3 = 10;
// sets up integer variable that will change over time
int buttonState = 0;         // creates variable to track buttonState, assigns initial value of 0


// setup runs once at startup
void setup() {
  pinMode(LED, OUTPUT);  // initialize LED pin as an output.
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(buttonPin, INPUT);  // initialize pushbutton pin as an input.
}

// loop runs infinitely
void loop() {
  buttonState = digitalRead(buttonPin);    // read the state of the pushbutton value
  delay (10); //small delay for debouncing, to increase accuracy

  // conditional statement
  if (buttonState == HIGH) { // if button is pressed (voltage received on pin 2)
    digitalWrite(LED, HIGH);      // send voltage to LED pin
    delay (1000);
    digitalWrite(LED1, HIGH);
    delay (2000);
    digitalWrite(LED2, HIGH);
    delay (3000);
    digitalWrite(LED3, HIGH);
    delay (2000);

    digitalWrite(LED, LOW);      // send voltage to LED pin
    delay (0);
    digitalWrite(LED1, LOW);
    delay (0);
    digitalWrite(LED2, LOW);
    delay (0);
    digitalWrite(LED3, LOW);
    delay (0);

    digitalWrite(LED, HIGH);      // send voltage to LED pin
    delay (1000);
    digitalWrite(LED1, HIGH);
    delay (2000);
    digitalWrite(LED2, HIGH);
    delay (3000);
    digitalWrite(LED3, HIGH);
    delay (2000);
    
   
  } else {  //otherwise
    digitalWrite(LED, LOW);
    delay (0);
    digitalWrite(LED1, LOW);// turn off voltage to LED pin
    delay (0);
    digitalWrite(LED2, LOW);
    delay (0);
    digitalWrite(LED3, LOW);
    delay (0);
  } 
  
}
