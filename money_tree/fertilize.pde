class fertilize {
  int myX;
  int myY;
  
  PImage fert;


  fertilize() {
    
    myX = displayWidth - 300;
    myY = 100;
    fert = loadImage("fertilizer.png");
    dps = 0;
  }


  void drawMe() {
    fill(61, 62, 79);
    rect(myX, myY, 100, 100, 50);
    image(fert, myX + 15, myY + 15, 70, 70);
  }

  void ifClicked() {
    if (mousePressed == true && dist(mouseX, mouseY, myX + 50, myY + 50) <50 ) {
      clickedTimes = clickedTimes - 100;
      dps = dps + 0.05;
      print("gfhdu");
      delay(100);
    }
  }

  void dps() {
    clickedTimes = clickedTimes + dps;
    
  }
}
