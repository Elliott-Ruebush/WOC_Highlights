Circle myCircle;
PImage creepercreep;
PImage mancraftdiomandsword;
PImage ironsword1;
PImage explosion2;
boolean gameOver;

void setup() {
  frameRate(70);
  orientation(LANDSCAPE);
  size(displayWidth, displayHeight);
  myCircle = new Circle(700, displayHeight/2);
  creepercreep = loadImage("creepercreep.png");
  mancraftdiomandsword = loadImage("mancraftdiomandsword.png");
  explosion2 = loadImage("explosion2.png");
  gameOver = false;
}

void draw() {
  background(creepercreep);
  fill(0, 255, 0);
  myCircle.drawMe();
  myCircle.moveMe(3, 3);
  fill(0, 100, 255);
  image(mancraftdiomandsword, displayWidth-125, mouseY, 175, 275);
  fill(0, 0, 0);
  textSize(30);
  print(myCircle.score);
  text("HITS: " + myCircle.score, 180, 340);
  if (myCircle.myX > displayWidth) {
    fill(180, 0, 0);
    if (myCircle.myX > displayWidth) {
      image(explosion2, -400, -400, 4000, 2500);
      textSize(150);
      text("YOU DIED", 340, 260);
      fill(240, 0, 0);
      textSize(25);
      text("Steve has been blown up by a Creeper", 10, 650);
      gameOver = true;
    }
    textSize(55);
    text("Score: " + myCircle.score, 575, 330);
    
  }
}


void keyPressed() {
  if (key == 'r' && gameOver) {
    frameRate(70);
    orientation(LANDSCAPE);
    size(displayWidth, displayHeight);
    myCircle = new Circle(700, displayHeight/2);
    creepercreep = loadImage("creepercreep.png");
    mancraftdiomandsword = loadImage("mancraftdiomandsword.png");
    explosion2 = loadImage("explosion2.png");
    gameOver = false;
  }
}
