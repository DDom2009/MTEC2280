
// Void ( its still incomplete, no rollover yet)

//int circleX, circleY; -rollover

//color circleColor; -rollover


void setup() {
  size(1000, 1000);
  
//  circleColor = color(255); -rollover
 
 
}
 
  
  
void draw() {
  
  
  background(0);
  
  

  
  
  for (int i= width; i>=0; i-=3) {
    
    ellipse(width, height/1000, i, i);
  }
  
  ellipseMode(CENTER);
  for (int i= width; i>=0; i-=3) {
    
    ellipse(width, height, i, i);
  }
  
  for (int i= width; i>=0; i-=3) {
    
    ellipse(width/500, height/1000, i, i);
  }
  
  for (int i= width; i>=0; i-=3) {
    
    ellipse(width/500, height, i, i);
  }

   if(mouseX >= width/2){
   fill(0); 
   ellipse(500, 500, 500, 500);
} else if (mouseY >= height/2) {
  fill(255, 0, 0);
  ellipse(500, 500, 500, 500);
   } 
 }


   

   
