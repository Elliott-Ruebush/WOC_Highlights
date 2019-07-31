int showTitle = 1;
int showLVL1 = 0;
int showKeyMessage;
PImage photo;
PImage photo2;
PImage photo3;
PImage photo4;
PImage photo5;
import processing.sound.*;
SoundFile file;
int flowerY = 300;
int showLock = 0;
int playMusic = 1;
int hammerPicked = 0;
String userInput = "";
void setup() {
  photo = loadImage("Vase.png");
  photo2 = loadImage("plant.png");
  photo3 = loadImage("key1.png");
  photo4 = loadImage("Pig.jpg"); 
  photo5 = loadImage("hammer.png");
   //file = new SoundFile(this, "Victory Song.mp3");
   //file.play();
  orientation(LANDSCAPE);
  size(displayWidth, displayHeight);
  myCircle = new Circle(20, displayHeight/2);
  myCircle2 = new Circle (20, displayHeight/3);
  myCircle3 = new Circle (20, displayHeight/4);
  myCircle4 = new Circle (20, displayHeight/5);
  myCircle5 = new Circle (20, displayHeight/6);
  myCircle6 = new Circle (20, displayHeight/7);
  myCircle7 = new Circle (20, displayHeight/3);
  myCircle8 = new Circle (20, displayHeight/2);
  myCircle9 = new Circle (20, displayHeight/5);
  myCircle10 = new Circle (20, displayHeight/4);
  
}

void draw () {
  if (showTitle > 0) {
    drawTitle();
  } else {
    background(150, 150, 150);
  } 

  if (showLVL1 > 0) {
    LVL1();
  }

  if (showLVL1 > 0) {
    //key
    image(photo3, 334, 330 );
    //vase
    image(photo, 300, 383);
    //flower - 80x79
    image(photo2, 310, flowerY);
    //hammer 
    image(photo5, 100,5);
    //painting
    image(photo4, 1000, 100);
    
    if (mouseX > 100 && mouseX < 195 && mouseY > 100 && mouseY < 250) {
      fill (189, 59, 11);
      rect (100, 100, 95, 150);
      fill (0);
      rect (146, 140, 10, 40);
      rect (131, 140, 15, 10);
    }
    if (showLock > 0) {
      fill (255, 255, 255);
      rect (100, 100, 1000, 250, 15);
      text ("Type 4 didgit code in here. Hit ENTER to exit screen", 50, 50);
      textSize (50);
      fill (0);
      text (userInput, 100, 150);
    }


    if (userInput.equals("0029")) {
      fill (0); 
      showLock = 0;
      fill(0,255,0);
      rect(550,displayHeight/6,100,50);
      fill(41, 199, 204);
      rect (displayWidth/3,displayHeight/4,300,500);
      fill(190, 245, 10);
      ellipse (700,250,100,100);
      fill(0,255,0);
      rect(displayWidth/3,550,300,150);
      fill(255,255,255);
      textSize(200);
      text ("YOU WIN",100,300);
      
      if (playMusic == 1) {
       //file = new SoundFile(this, "Victory Song.mp3");
       // file.play();
       //playMusic = 0;
      }
 
 
 }

    if (hammerPicked > 1) {
       fill (255,255,255); 
       text ("you found a tool", 400,500);}
      
    if (hammerPicked > 0) {
       if (mouseX > 1000 && mouseX < 1350 && mouseY > 100 && mouseY < 450) {
       image(photo4, 5000,5000);
       text("1", 1200,300);}}
  
    }     
         
    if (mouseX > 205 && mouseX < 300 && mouseY > 100 && mouseY < 250) {
      fill (58, 59, 61);
      rect (205, 100, 95, 150);
      fill (189, 59, 11);
      rect (300, 100, 95, 150);
      fill (0);
      rect (300, 100, 10, 10);
      rect (300, 165, 10, 10);
      rect (300, 240, 10, 10);
      textSize (50);
      text ("4", 250, 165);
      showKeyMessage = 1;
      hammerPicked = 1;
  }

    if (showKeyMessage > 1) {
      textSize (100);
      fill (1202, 232, 7);
      String message = "You found a key!";
      text (message, displayWidth/2-textWidth(message)/2, displayHeight/2);
    }
    if (showKeyMessage > 0) {
    }

}



void keyPressed() {
  if (key == 's') {
    showTitle = 0;
  }
  if (key == 's') {
    showLVL1 = 1;
  }

  if (keyCode == ENTER) {
    showLock = 0;
   
  

  }
}





void mouseClicked() {
  if (showLVL1 > 0) {
    if (mouseX > 310 && mouseX < 380 && mouseY > 300 && mouseY < 379) {
      //clicked on the flower
      flowerY = flowerY - 79; 
      showKeyMessage = 2;
    }

    if (mouseX > 800 && mouseX < 900 && mouseY > displayHeight/2 &&  mouseY < 550) {
      showLock = 1;
       }
    
    if (mouseX > 100 && mouseX < 150 && mouseY > 5 && mouseY < 100) {
       hammerPicked = 2;}

    
}
}
void keyTyped() {
  if (showLock > 0) {
    userInput = userInput + key;
  }
}
