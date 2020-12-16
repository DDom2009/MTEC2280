String [] Phrases={" FAREWELL!", " SEE YA LATER", " GOOD BYE!"};
String [] Greetings={" HI!", " HEY!", "WHATSUP!"};
int index = int(random(Phrases.length));
int index2 = int(random(Greetings.length));
void setup(){
  size (1000, 1000);
  background(255);
  
}

void draw(){
 
  Circle();
  Change();
  

    
    
    
}


void Circle(){
  
  if (mousePressed == true){
    fill(20, 75, 200);
    ellipse (500, 500, 300, 300);
    textSize(80);
    fill(0);
    textAlign (CENTER);
    text ( Phrases[index], 500, 800);
    }else { 
      fill(175, 100, 220);
      ellipse (500, 500, 300, 300);
     textSize(80);
     fill(0);
     textAlign(CENTER);
     text ( Greetings[index2], 500, 200);
    
  
  
 }
}
 
 void Change(){
   
   if( mouseX >= width/2){
     background(90, 223, 255);
     
   
}
 

}
