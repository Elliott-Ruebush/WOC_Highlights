int moveL;
int moveR;
int moveDown;
int moveUp;
int moveSpeed;
int jumpHeight = 50;
int currentHeight = 0;
boolean HitR;
boolean HitL;
Person billy;
Platform P1;
Platform P2;
Platform P3;
Platform P4;
Platform P5;
Platform P6;

void setup() {

  size(displayWidth, displayHeight);
  billy = new Person();
  P1 = new Platform(500, 450, 120, 20, false); //platform 1
  P2 = new Platform(700, 300, 120, 20, false); //platform 2
  P3 = new Platform(380, 150, 120, 20, false); // Platform 3
  P4 = new Platform(770, 150, 200, 20, false); // Platform 4
  P5 = new Platform(750, 50, 20, 120, false);  // platform 5
  P6 = new Platform(0, 536, 200, 300, true); // start platform

  HitR = false;
  HitL = false;

  billy.PersonX = 100;
  billy.PersonY = P6.PlatY - 31;
  moveSpeed = 5;
}

void draw() {
  background( 0, 255, 240);


  billy.drawMe();

  P1.drawMe();
  P2.drawMe();
  P3.drawMe();
  P4.drawMe();
  P5.drawMe();
  P6.drawMe();

  {
    if (moveR > 0) {
      billy.PersonX = billy.PersonX + moveSpeed;
    }
    if (moveL > 0) { 
      billy.PersonX = billy.PersonX - moveSpeed;
    }
    if (moveUp > 0) {
      billy.PersonY = billy.PersonY - moveSpeed;
      currentHeight = currentHeight + 1;
      if (currentHeight > jumpHeight) {
        moveUp = 0;
        moveDown = 1;
      }
    }
    if (billy.PersonY < displayHeight && moveDown > 0) {
      billy.PersonY = billy.PersonY + moveSpeed;
      currentHeight = currentHeight - 1;
      if (currentHeight > jumpHeight ) {
        moveUp = 0;
        moveDown = 0;
      }
    }
  }
  {
    checkPlat(P1);
    checkPlat(P2);
    checkPlat(P3);
    checkPlat(P4);
    checkPlat(P6);
    //Checking Plat 5
    if ((billy.PersonY + 30) >= P5.PlatY && (billy.PersonY < P5.PlatY + P5.PlatH) && billy.PersonX > P5.PlatX && billy.PersonX < (P5.PlatX +P5.PlatW)) {
      moveDown = 0;
      //if (billy.PersonX >= P5.PlatX && (billy.PersonX < P5.PlatX + P5.PlatW)) {
      //  HitL = true;
      //} else if (billy.PersonX <= P5.PlatX + 20 && (billy.PersonX > P5.PlatX))
      //{
      //  HitR = true;
      //} else {
      //  HitR = false;
      //  HitL = false;
      //}
      currentHeight = 0;
    }
  }
}
void keyPressed () {


  if (key == 'd') {
    if (HitL == false) {
      moveR = 1;
      moveL = 0;
    }
  } else if (key == 'a') {
    if (HitR == false) {
      moveR= 0;
      moveL = 1;
    }
  } else if (key == 'w') {
    moveUp = 1;
    moveDown = 0;
  } //else if (key == 's') {
  // moveUp = 0;
  // moveDown = 1;
  // }
}
void keyReleased() {
  if (key == 'd') {
    moveR = 0;
  } else if (key == 'a') {
    moveL = 0;
  } //else if (key == 's') {
  //moveDown = 0;
  //}
}

void checkPlat(Platform p) {
  if ((billy.PersonY + 30) >= p.PlatY && (billy.PersonY < p.PlatY + p.PlatH) && billy.PersonX > p.PlatX && billy.PersonX < (p.PlatX +p.PlatW)) {
    moveDown = 0;
    currentHeight = 0;
  }
}
