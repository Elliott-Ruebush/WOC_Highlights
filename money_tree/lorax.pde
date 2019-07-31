class lorax {
  int myX;
  int myY;
  PImage meme;


  lorax() {
    myX = displayWidth - 300;
    myY = 300;
    meme = loadImage("lorax.png");
  }



  void ifClicked() {
    if (mousePressed == true && dist(mouseX, mouseY, myX + 50, myY + 50) <50 ) {
      clickedTimes = clickedTimes - 10000;
      dps = dps + 10;
      print("gfhdu");
      delay(100);
    }
  }
  
  
  void drawMe() {
    fill(61, 62, 79);
    rect(myX, myY, 100, 100, 50);
    image(meme, myX + 15, myY + 15, 70, 70);
  }
}
