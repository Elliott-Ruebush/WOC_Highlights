class Platform {
  int PlatX;
  int PlatY;
  int PlatW;
  int PlatH;
  boolean isStart;

  public Platform (int PX, int PY, int PW, int PH, boolean start) {
    PlatX = PX;
    PlatY = PY;
    PlatW = PW;
    PlatH = PH;
    isStart = start;
  }

  void drawMe() {
    //stage
    if (isStart) {
      fill(35, 255, 0);
    } else {
      fill(0);
    }
    rect(PlatX, PlatY, PlatW, PlatH); //platform 1
  }
}
