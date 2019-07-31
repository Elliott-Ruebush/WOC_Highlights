class money {
  PImage moolah;
  int mX;
  int mY;


  money() {
    moolah = loadImage("moolah.png");
    mX = treeX + 200;
    mY = treeY + 100;
  }

  void goToTree(){
    mX = treeX + 200;
    mY = treeY + 100;
    mX = (int) random(170, 570);
  }

  void rainMoney() {

    
    image(moolah, mX, mY, 100, 100);
    
    
    
  }
  
  void fall(){
    if (mY < displayHeight){
      
      mY = mY + 10;
    }
  }
}
