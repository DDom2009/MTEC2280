// David Dominguez -target
String gameState; 

int number = 400;
int number2 = int(random(1, 200));
float wamo =600;

void setup(){
  size(800, 800);
  gameState = "START";
  background (0);
  textSize(40);
  
}

void draw(){
  clearBackground();
  if (gameState == "START") {
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
}
void playGame() {
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
 
  
  
  
