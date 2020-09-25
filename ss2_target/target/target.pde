// David Dominguez -target

int number = 400;
int number2 = int(random(1, 200));
float wamo =600;

void setup(){
  size(800, 800);
  background (0);
  
}

void draw(){
  
  
  
  if(mouseX >= width/2){
   fill(0); 
} else if (mouseY >= height/2) {
  fill(255, 0, 0);
} else {
  fill (255);
}  
ellipse(number, number, wamo, wamo);


if (mousePressed == true) {
    fill(0);
  } else {
    fill(255);
 }
 ellipse(number, number, wamo -200, wamo -200);
 
 fill(0);
 ellipse(number, number, number2, number2);
  
 }

 //ellipse(number, number, number, number);
 
  
  
  
