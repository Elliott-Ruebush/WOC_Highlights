//IF YOU SEE THIS IT HAS SAVED


float clickedTimes;
int treeX;
int treeY;
int x;
int start;
PImage tree;
int sX;
int sY;
float dps;
money a;
fertilize b;
lorax c;
PImage title;
PImage meme;
PImage treelorax;



void setup() {

  size(displayWidth, displayHeight);
  background(120, 161, 227);
  treeX = 200;
  treeY = displayHeight/ 3;
  tree = loadImage("money tree.png");
  a = new money();
  b = new fertilize();
  c = new lorax();
  x = 0;
  start  = 0;
  sX = displayWidth/2 - 170;
  sY = displayHeight/2 + 50;
  title = loadImage("Ltitle.png");
  meme = loadImage("meme2.jpg");
  treelorax = loadImage("treelorax.png");
}

void draw() {
  
  //background
  image(meme, -500, 0, displayWidth + 1000, displayHeight + 500);


  //title
  image(title, 270, 100, 800, 300);

  //start box

  //fill(255);
  //rect(sX, sY, 100, 100, 10);
  image(treelorax, sX, sY, 300, 600);

  fill(0);
  textSize(40);
  text("Start", displayWidth/2 - 45, displayHeight/2 +160);



  if (mousePressed == true && (dist(mouseX, mouseY, sX + 50, sY + 50) < 50)) {
    println("mouse X " + mouseX  + " displayWidth/2 " + displayWidth/2);
    start = 1;
    print("75863877");
  }
  if (start == 1) {

    //background
    background(120, 161, 227);

    //grass
    noStroke();
    fill(48, 168, 27);
    rect(-10, 600, 100000, 600);

    //functions
    b.drawMe();
    b.ifClicked();
    b.dps();

    c.drawMe();
    c.ifClicked();


    //tree
    image(tree, treeX, treeY, 400, 400);

    //score
    textSize(40);
    fill(0);
    text("You have: " + (int)clickedTimes + " Dollars!", 100, 100);




    if (mousePressed == true && (dist(mouseX, mouseY, treeX + 200, treeY+ 200) < 200)) {
      clickedTimes = clickedTimes + 1;
      print("Money: " + clickedTimes);
      a.goToTree();
      x = 1;
      delay(200);
    }



    if (x == 1) {

      a.rainMoney();
      //a.mY = a.mY + 5;
      a.fall();
      print(a.mY);
    }
    if (a.mY > displayHeight) {
      x = 0;
    }
  }
}
