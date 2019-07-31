class Circle
{
  int myX;
  int myY;
  int dirX;
  int dirY;
  PImage CreeperBAll = loadImage("RoundCreeperFace.png");
  PImage ironsword1 = loadImage("ironsword1.png");
  int count;
  int score;


  public Circle(int startX, int startY)
  {
    myX = startX;
    myY = startY;
    dirX = 2;
    dirY = 2;
  }

  void drawMe()
  {
    image(CreeperBAll, myX, myY, 50, 50);
    fill(255, 255, 225);
    image(ironsword1, 50, myY, 65, 200);
  }

  void moveMe(int deltaX, int deltaY)
  {
    myX = myX + (deltaX * dirX);  
    myY = myY + (deltaY * dirY);

    //bounces off my paddle
    if (myX > displayWidth-80 && myX < displayWidth  && myY > mouseY && myY < mouseY+200 ) {
      dirX = dirX * -1;
      count = count +1;
      score = score + 1;
    }
    if (myY > displayHeight) {
      dirY =-2;
    } else if (myY < 0) {
      dirY =2;
    }
    //Bounces off other paddle
    if (myX < 80 && myX > 0 ) {
      dirX = dirX * -1;
      count = count +1;
      score = score + 1;
    }
    if (count > 3) {
      dirX = dirX + 1;
      count = 0;
    }
  }
}
