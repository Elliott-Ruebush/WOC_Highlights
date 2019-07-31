class player {
  PImage player;
  PImage player2;
  PImage player3;
  int skin;
  int playerX;

  player() {
    frameRate(100);
    player = loadImage("zelda.png");
    player2 = loadImage("king.png");
    player3 = loadImage("luigi.png");
    playerX = displayWidth/2 - 30;
    skin = 1;
  }


  void setSkin() {
    if (skin == 1) {
      image(player, playerX, displayHeight-200, 40, 50);
    } else if (skin == 2) {
      image(player2, playerX, displayHeight-200, 40, 50);
    } else if (skin == 3) {
      image(player3, playerX, displayHeight-200, 50, 50);
    }
  }

  void changeSkin() {
    if (key == '1') {
      skin = 1;
    } else if (key == '2') {
      skin = 2;
    } else if (key == '3') {
      skin = 3;
    }
  }


  void bounceOffWallsAndMove() {
    if (playerX>displayWidth-30) {
      playerX = playerX-10;
    } else if (playerX < 0) {
      playerX = playerX + 10;
    } else {
      playerX = mouseX;
    }
  }
  
  void moveToMouse() {
  playerX = mouseX;
}

}
