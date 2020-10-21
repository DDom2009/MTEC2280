// David Dominguez -target mk 2 the point of the game is to make the circle clickable and between a gric of cicles. the clackabble circle will change red while the other circles will remain gray. if you click the red circle you gain one point and if you click on a grey circle you lose a life.
String gameState; 

//int number = 400;
//int number2 = int(random(1, 200));
float wamo =600;
//float x = 0;
//float y = 0;

void setup(){
  size(800, 800);
  gameState = "START";
  background (0);
  textSize(40);
  
}

void draw(){
  clearBackground();
  if (gameState == "START") {// a portion of this code was taken from https://www.youtube.com/watch?v=RSSI_Km5jIA, will be modified later
    startGame();
  } else if (gameState == "PLAY") {
    playGame();
  } else if (gameState == "WIN") {
    winGame();
  } else if (gameState == "LOSE") {
    loseGame();
  }
}
 
void startGame() {
  textAlign(CENTER);
  textSize(40);
  fill(255, 0, 0);
  text("Start", width/2, height/2);
  if (mousePressed == true) {
    gameState = "PLAY";
  }
}
void playGame() {
  
  fill(0);
  
  for(int i= 100; i<width;  i+=200){
    
   ellipse(i, 110, 150, 150);
  }
  
  for(int i= 100; i<width;  i+=200){
    
   ellipse(i, 300, 150, 150);
 }
  
  for(int i= 100; i<width;  i+=200){
    
   ellipse(i, 490, 150, 150);
  }
  for(int i= 300; i<width;  i+=200){
    
   ellipse(i, 680, 150, 150);
  }
    
}
  
  

void winGame() {
}
void loseGame() {
}


void clearBackground() {
  fill(255);
  rect(0, 0, width, height);
   
    
}



  
  
 // if(mouseX >= width/2){
  // fill(0); 
//} else if (mouseY >= height/2) {
 // fill(255, 0, 0);
//} else {
 // fill (255);

//ellipse(number, number, wamo, wamo);


//if (mousePressed == true) {
 //   fill(0);
 // } else {
  //  fill(255);
// }
 //ellipse(number, number, wamo -200, wamo -200);
 
 //fill(0);
 //ellipse(number, number, number2, number2);
  
 

 //ellipse(number, number, number, number);
 
  
  
  
