import g4p_controls.*;
Plant[] plants = new Plant[12];
Plant present;
PFont font;
Button[] bArr = new Button[12];
Button start;
boolean plantClick = false;
int plantIndex = 0;
boolean begin;
boolean isPaused = true;
boolean plantView = false;
int midX = height/2;
float fertVal;
float sunVal;
float waterVal;
float groundLevel = height/2 +25;
void setup() {

  begin = false;
  font = createFont("Inter-Bold.ttf", 50);
  textFont(font);
  background(5, 141, 4);
  fill(0);
  menu();

  
  size(800,600);
  createGUI();
  textSize(50);
  
}
void menu(){
  text("Plant Grower", width/2 -150, height/4);

  start = new Button(width/2-50, height/3 -25, width/2 +50, height/3 +25, true);
  start.pack(106, 76, 3);
  start.label("START");
}
void pots(){
  int padding = 100;
  for(int i =0; i < 12; i++){
  Button b = new Button(float((i%6)*125 + padding), (i/6)*125 + 300.0, 100.0); 
  b.pack(106, 76, 3);
  bArr[i] = b;
  
  }
  fill(0);
  text("Pick Your Pot", width/2 -150, height/4);
}
int overButtons(Button[] buttonArray){
  for(int i = 0; i<buttonArray.length; i++){
    if(buttonArray[i].overButton()){
      return i;
    }     
  }
  return -1;
} void pot(){
     fill(106, 76, 3);

     quad(width/2 - 100, height/2 +25, width/2 +100, height/2 +25, width/2 +50, height/2 + 175, width/2 -50, height/2 + 175);
      rect(width/2 - 110, height/2, width/2 +110, height/2 + 35);
      fill(0);
      rect(0.0, height/2 + 175, 800.0, height);

}
void mousePressed(){
  if(start.overButton() && start.start){
    background(5, 141, 4);
    pots();
    begin = true;
  }
  if(begin){
    if(overButtons(bArr) !=-1){
      plantIndex = overButtons(bArr);
      background(5, 141, 4);
      fill(106, 76, 3);
      plantView = true;
      pot();
      
    }
  }

}
 

void draw() {
  if(plantView && plantClick){
    present.grow();
  }
}
