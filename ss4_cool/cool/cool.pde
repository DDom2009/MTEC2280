
PImage img;


void setup(){
img = loadImage ("ron_swanson.jpg");
 
size(1280, 1692);
background(255);

}

void draw(){
  image (img, 0, 0); 
  
  if (mousePressed == true){
    
    fill(0);
    
    strokeWeight(20);
    
   ellipse (550, 900, 200, 200);
   
   fill(0);
    
    strokeWeight(20);
    
   ellipse (880, 900, 200, 200);
   
   fill(0);
   
   strokeWeight(20);
   
   rect (640, 880, 220, 23);
   
   fill(255);
   
   noStroke();
   
   rect(545, 850, 63, 43);
   
   fill(255);
   
   noStroke();
   
   rect(865, 850, 63, 43);
   
   
   fill(0);
   textSize(60);
text("STAY COOL", 550, 680); 

  } else {
    fill(0);
    textSize(60);
text("YO...", 630, 680); 

  }
  
}




    
    
    
  


    
    
  
