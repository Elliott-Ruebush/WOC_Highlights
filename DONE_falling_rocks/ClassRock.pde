class rock {

  int rockY;
  float fallSpeed;
  float a = random(-60, 1440);
  float b = random(80, 100);
  PImage img2;

  rock() {
    frameRate(100);
    rockY = 0;
    fallSpeed = 1;
    img2 = loadImage("rock.png");
  }



  void fall() {
    rockY = rockY + (int) fallSpeed*(int)random(1, 15);
    fallSpeed = fallSpeed + 0.0005;
  }

  void IfHitFloor() {
    if (rockY > displayHeight) {

      rockY = 10;

      a = random(-60, 1440);
      b = random(80, 100);
    }
  }



  void drawRock() {

    //rocks
    //fill(122, 102, 102);
    //ellipse(a, rockY, b, b);
    image(img2, a, rockY, b, b);
  }



  void DIE() {
    if (dist(A.playerX - 20, displayHeight-200, a, rockY- 40) < 45) {
      fallSpeed = 1;
      rockY = -90;
      running = false;
      end = 1;
      print(end);
      
    }
  }
}
