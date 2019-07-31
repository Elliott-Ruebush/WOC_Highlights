Circle myCircle;
Circle myCircle2;
Circle myCircle3;
Circle myCircle4;
Circle myCircle5;
Circle myCircle6;
Circle myCircle7;
Circle myCircle8;
Circle myCircle9;
Circle myCircle10;



void drawTitle() {
  int r = (int) random(255);
  int g = (int) random(255);
  int b = (int) random(255);
  fill (r,g,b);
  myCircle.drawMe();
  myCircle.moveMe(10, 5);
  myCircle2.drawMe();
  myCircle2.moveMe(10, 7);
  myCircle3.drawMe();
  myCircle3.moveMe(16, 5);
  myCircle4.drawMe();
  myCircle4.moveMe(12, 5);
  myCircle5.drawMe();
  myCircle5.moveMe(7, 1);
  myCircle6.drawMe();
  myCircle6.moveMe(1, 5);
  myCircle7.drawMe();
  myCircle7.moveMe(20, 3);
  myCircle8.drawMe();
  myCircle8.moveMe(14, 8);
  myCircle9.drawMe();
  myCircle9.moveMe(2, 51);
  myCircle10.drawMe();
  myCircle10.moveMe(16, 3);
  fill(0);
  textSize(50);
  text ("Press 'S' to start!",500,500);
  
}
