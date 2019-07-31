Circle myCircle;
Circle myCircle2;

int myCircleX;
int myCircle2X;
int myCircleY;
int myCircle2Y;

void setup() {
  size(500, 500);
  myCircle = new Circle(280, 300);
  myCircle.myColor = color(48, 180, 206);
  myCircle2 = new Circle(40, 280);
  myCircle2.myColor = color(48, 180, 206);
}



void draw() {
  background(25, 213, 201);
  myCircle.drawMe();
  myCircle.moveMe(5, 5);

  myCircle2.drawMe();
  myCircle2.moveMe(5, 5);
  
  println(dist (myCircle.myX, myCircle.myY, myCircle2.myX, myCircle2.myY));
  if (dist (myCircle.myX, myCircle.myY, myCircle2.myX, myCircle2.myY)<= 30)
  {
    myCircle.dirX = 0;
    myCircle.dirY = 0;
    myCircle2.dirX = 0;
    myCircle2.dirY = 0;
    textSize(32);
    text("GaMeOvEr", 250, 250);
    fill(245, 0, 0);
  }
}


void mouseClicked() {
  myCircle.dirX = myCircle.dirX * -1;
  myCircle2.dirX = myCircle2.dirX * 1;
}

void keyTyped() {
  if (key == 's') {
    myCircle.dirX = ((int)random(-2, 2));
    myCircle2.dirX = ((int)random(-2, 2));
    myCircle.dirY = ((int)random(-2, 2));
    myCircle2.dirY = ((int)random(-2, 2));
  }

  {
    if (key == 'p') {
      myCircle.dirX = 0;
      myCircle.dirY = 0;
      myCircle2.dirX = 0;
      myCircle2.dirY = 0;
    }
  }
}
