//on/off switch used to turn on a three led

import controlP5.*; // used the cp5 library to create and on/ off switch to turn on led
import processing.serial.*; 
Serial myPort; 
ControlP5 cp5; 
PFont font; 

void setup() { 
  size(500, 500); 
  
  cp5 = new ControlP5(this); 
  myPort = new Serial(this, "COM3", 9600);
font = createFont("Arial", 100); //text for on/off 
  
  cp5.addButton("ON") // on state 
    .setPosition(150, 50) 
    .setSize(220, 170) 
    .setFont(font) 
    .setColorBackground(color(255)) 
    .setColorForeground(color(255)) 
    .setColorLabel(color(0, 0, 0)) 
    ;

  cp5.addButton("OFF")// off state
    .setPosition(150, 250)
    .setSize(220, 170)
    .setFont(font)
    .setColorBackground(color(255))
    .setColorForeground(color(255))
    .setColorLabel(color(0, 0, 0))
    ;
}

void draw() {

  background(255); 
}

void ON() {
  myPort.write(1);// sends a value of 1 to the port for the on status
}

void OFF() {
  myPort.write(2);//sends a value of 2 to the port  for the off status
}
