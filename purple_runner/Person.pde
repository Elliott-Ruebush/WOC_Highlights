class Person {
  int PersonX;
  int PersonY;
  void drawMe() {
    fill(255,0,0);
    rect(PersonX, PersonY, 15, 15); //shirt
    fill(255, 0, 0);
    rect(PersonX - 7, PersonY, 7, 7);//L shoulder
    rect(PersonX + 15, PersonY, 7, 7);//R shoulder
    fill(255, 0, 255);
    rect(PersonX + 1, PersonY - 12, 12, 12);//head
    rect(PersonX - 7, PersonY + 7, 7, 7);//L hand   
    rect(PersonX + 15, PersonY + 7, 7, 7);// R hand
    fill(0, 0, 255);
    rect(PersonX, PersonY + 15, 15, 18); //legs
  }
}
