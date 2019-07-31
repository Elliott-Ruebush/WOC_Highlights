//DONE


rock a;
rock b;
rock c;
rock d;
rock e;
rock f;
rock g;
player A;
int startX;
int startY;
int end;
int s;
int count;
int rockY;
int rockX;
PImage img;
PImage rock;
PImage rockSign;
boolean running;
boolean start;








void setup() {
  frameRate(60);
  size(displayWidth, displayHeight);
  background(126, 208, 252);

  rockY  = -90;
  rockX = (int) random(-100, displayWidth);

  a = new rock();
  b = new rock();
  c = new rock();
  d = new rock();
  e = new rock();
  f = new rock();
  g = new rock();
  A = new player();
  end = 0;
  s = 0;
  running = false;
  startX = displayWidth/2- 100;
  startY = displayHeight/2;
  img = loadImage("title.png");
  rock = loadImage("rock.png");
  rockSign = loadImage("sign2.png");
  start = true;
}









void draw() {
  
  
  if (end == 0) {
    A.bounceOffWallsAndMove();
    
    
    

    //background

    background(126, 208, 252);

    //grass
    noStroke();
    fill(24, 196, 8);
    rect(0, displayHeight-170, displayWidth+10, 100);

    //start box
    if (start == true) {
      startX = displayWidth/2- 100;
      startY = displayHeight/2;
      rect(startX, startY, 200, 200, 200);
      fill(0, 0, 0);
      textSize(60);
      text("START", startX+ 10, startY + 120);
    }


    //title
    image(img, 250, 100, 1000, 200);

    //skins/ drawing player
    A.changeSkin();
    A.setSkin();
    
    //sign
    image(rockSign, 20, displayHeight - 350, 100, 200);
    
  }


  if (count<600 && end == 1) {

    drawBubble();

    count = count + 1;

    fill(255);
    textSize(50);
    text("YOU FAILED! Press 'R' to restart", 200, 200);
  } 

  if (count >= 200 && keyPressed && key == 'r') {
    count = 0;
    a.rockY = 0;
    b.rockY = 0;
    c.rockY = 0;
    d.rockY = 0;
    e.rockY = 0;
    f.rockY = 0;
    rockY = -90;
    
    a.fallSpeed = 1;
    b.fallSpeed = 1;
    c.fallSpeed = 1;
    d.fallSpeed = 1;
    e.fallSpeed = 1;
    f.fallSpeed = 1;
    g.fallSpeed = 1;
    
    end = 0;
    //running = true;
    start = true;
  }


  if (mousePressed == true && (dist(mouseX, mouseY, startX, startY) < 200)) {
    print("it worked");
    running = true;
    start = false;
    
    a.rockY = 0;
    b.rockY = 0;
    c.rockY = 0;
    d.rockY = 0;
    e.rockY = 0;
    f.rockY = 0;
    rockY = -90;
    
  }

  if (running) {

    
    /*
    //timer
    s = second();
    text(s, displayWidth - 400, 30);
*/
    //skins/ drawing player
    A.changeSkin();
    A.setSkin();

    // hide start button
    if (start == false) {
      startX = -1010001;
      startY = -6489892;
    }


    //draw rocks
    a.drawRock();
    a.fall();
    a.IfHitFloor();
    a.DIE();

    b.drawRock();
    b.fall();
    b.IfHitFloor();
    b.DIE();

    c.drawRock();
    c.fall();
    c.IfHitFloor();
    c.DIE();

    d.drawRock();
    d.fall();
    d.IfHitFloor();
    d.DIE();

    e.drawRock();
    e.fall();
    e.IfHitFloor();
    e.DIE();

    f.drawRock();
    f.fall();
    f.IfHitFloor();
    f.DIE();

    g.drawRock();
    g.fall();
    g.IfHitFloor();
    g.DIE();

    
  }
}









void drawBubble() {

  // ellipse(random(0, displayWidth), random(0, displayHeight), 80, 80);
  image(rock, rockX, rockY, 150, 150);
  rockY = rockY + 10;
  rockX = (int)random(-100, displayWidth);
  if (rockY > displayHeight) {
    rockY = -100;
  }
}
