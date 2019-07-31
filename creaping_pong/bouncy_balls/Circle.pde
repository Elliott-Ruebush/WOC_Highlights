class Circle
{
  int myX;
  int myY;
  int dirX;
  int dirY;
  color myColor;
  int myWidth;
  int myHeight;

  public Circle(int startX, int startY)
  {
    myX = startX;
    myY = startY;
    myWidth = 20;
    myHeight = 20;
    dirX = 1;
    dirY = 1;
  }

  void drawMe()
  {
    ellipse(myX, myY, myWidth, myHeight);
    }

  void moveMe(int deltaX, int deltaY)
  {
    myX = myX + (deltaX * dirX);  
    myY = myY +  (deltaY * dirY);

    if (myY > 500) {
      dirY = -1;
      myWidth = myWidth + 5;
      myHeight = myHeight + 5;
    } else if (myY < 0)
      dirY =  1;
    
    if (myX > 500) {
      dirX =-1;
      myWidth = myWidth + 5;
      myHeight = myHeight + 5;
    } else if (myX < 0) {
      dirX = 1;
      myWidth = myWidth + 5;
      myHeight = myHeight + 5;
    }
  }
    
    
  }
