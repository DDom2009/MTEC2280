import processing.serial.*; //imports Serial library from Processing

Serial myPort; 
int val=0; 

void setup() {
  size(1000, 1000);



  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  background(255,0,0);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  if (val>=50){
  
  fill (0);
  ellipse (width/2, height/2, val, val); //println (val); prints to Processing console
 
  if (val>=120){
  fill (255);
  rect (width/2, height/2, val, val); 
  }
  if (val>=255){
  fill (255);
  triangle (100, 100, 300, 300, val, val);
  
 }

}
}
