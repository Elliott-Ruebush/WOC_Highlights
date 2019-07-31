class Circle
{
  int myX;
  int myY;
  int dirX;
  int dirY;
  int r = (int) random(255);
  int g = (int) random(255);
  int b = (int) random(255);
  
  public Circle(int startX, int startY)
  {
    myX = startX;
    myY = startY;
    dirX = 1;
    dirY = 1;
}
  
  void drawMe()
  {
    ellipse(myX, myY, 20, 20);
  }
  
  void moveMe(int deltaX, int deltaY)
  {
    myX = myX + (deltaX * dirX);  
    myY = myY + (deltaY * dirY);
  if(myX > displayWidth){
    dirX = -1;
  }
  else if(myX < 0){
    dirX = 1;
  }
  if(myY > displayHeight){
    dirY = -1;
  }
  else if(myY < 0){
    dirY = 1;
  }
}}
