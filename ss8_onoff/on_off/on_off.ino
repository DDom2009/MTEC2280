void setup() {

pinMode(13, OUTPUT); //set pin as output , red led
pinMode(12, OUTPUT);
pinMode(11, OUTPUT);
Serial.begin(9600); //start serial
}

void loop(){

if(Serial.available()){ //id data available

int val = Serial.read();

if(val == 1){ //if 1 received
digitalWrite(13, HIGH); //turn on
}
if(val == 2){ //if 2 received
digitalWrite(13, LOW); //turn off
}
if(val == 1){ //if 1 received
digitalWrite(12, HIGH); //turn on
}
if(val == 2){ //if 2 received
digitalWrite(12, LOW); //turn off
}
if(val == 1){ //if 1 received
digitalWrite(11, HIGH); //turn on
}
if(val == 2){ //if 2 received
digitalWrite(11, LOW); //turn off
}
}
}
