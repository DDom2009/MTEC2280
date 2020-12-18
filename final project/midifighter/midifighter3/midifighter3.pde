//four button vj beat machine
// by david dominguez
//press the four buttons to create different rythms that coincide with visuals.
// arduino to processing handshake atrributed to allison berkoy

import processing.video.*;
import processing.serial.*;
Serial myPort;
Movie myMovie, myMovie1, myMovie2, myMovie3;
int val = 0;



void setup() {
 size(960, 540);
 background(0);
 myMovie = new Movie(this, "kick.mp4");//a kick drum
 myMovie1 = new Movie(this, "scream.mp4");// the wilhelm scream
 myMovie2 = new Movie(this, "snare.mp4");// a snare drum
 myMovie3 = new Movie(this, "starwars.mp4");// a laser beam
 
 myMovie.loop();// commands the clips to loop
 myMovie1.loop();
 myMovie2.loop();
 myMovie3.loop();
 
 printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
 // choose the port to which the Arduino is connected
 // on the PC this is usually COM1, on the Macintosh
 // this is usually tty.usbserial-XXX
}
void draw() {
 background(255);

 if (myPort.available() > 0) {
 val = myPort.read();
 }
 

 if (val == 1) {
   
 myMovie.play();// plays clip when button is pressed
 image(myMovie, 0, 0);// displays image of the clip
 } else {
 myMovie.stop();// stops the clip when button is released
 }
 
 if (val == 2) {
 myMovie1.play();
 myMovie1.speed(2);
 image(myMovie1, 0, 0);
 } else {
 myMovie1.stop();
 }
 
 if (val == 3) {
 myMovie2.play();
 image(myMovie2, 0, 0);
 } else {
 myMovie2.stop();
 }
 
 if (val == 4) {
 myMovie3.play();
 image(myMovie3, 0, 0);
 } else {
 myMovie3.stop();
 }
}
 

// Called when a new frame is available to read
void movieEvent(Movie m) {
 m.read();
}
