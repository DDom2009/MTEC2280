// the name of the game is to push the button unitl you reach 100 points!!!

String  State = "begin";
String[] Cheers={" great job!", " keep going!", " almost there!", "goal!"};
int positionCheers=0;
int score;
int index = int(random(Cheers.length));
int x = 500; 
int y = 500;

void setup() {
  size(1000, 1000);
  score = 0;
 
  

  
}

void draw() {

  if (State == "begin"){
    Start();
  }else if(State == "gameplay"){
    Play();
  } else if(State == "gameover"){
    gameOver();
   }    
  }
  
  void mousePressed(){
  if(State == "begin"){
    State = "gameplay";
    
  } else if (State == "gameover") {
    State = "begin";
    
  
    
  
    
  }
  
  if (State == "gameplay"){
    
    float r = dist (x, y, mouseX, mouseY);
    
  if (r < 50) {
     score = score + 1;
      
  if (score > 20){
     State = "gameover";
     
    }
   }
  }
 }
  

   
 
  
 
 
 
void Start(){
  background(255);
  textAlign(CENTER);
  fill(0);
  textSize(70);
  text("START", 500, 500 );
  
}

void Play(){
  
  background(255);
  fill(0);
  text("Score: " +score, 500, 300);
  noStroke();
  fill(255, 0, 0);
  ellipse(500, 500, 300, 300);
  fill(255, 0, 0);
  textSize(80);
  text ( Cheers[index], 500, 200);
  fill(0);
  textSize(30);
  text (" click to 100!", 500, 500);
  
  
 
}

void gameOver(){
   background(255,0,0);
   fill(255);
   textSize(100);
    text("YOU DID IT!!!", 500, 500);
    textSize(50);
    text("again?", 500, 600);
  
}
