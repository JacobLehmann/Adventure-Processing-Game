class grating{
  int timer;
  int x,y;
  PImage grate, grate1,grate2,grate3;
  
  grating(int _x, int _y, int time){
    x = _x;
    y = _y;
    timer = time;
    grate = loadImage("grating.png");
    grate1 = loadImage("grating1.png");
    grate2 = loadImage("grating2.png");
    grate3 = loadImage("grating3.png");
  }
  
  void display(){
    if(millis() >= timer + 1500 && millis() < timer + 4000){
      image(grate3,x,y);
      if(dist(x+25,y+25, mainChar.x+25, mainChar.y +25) < 40){
        mainChar.loseHP();
      }
    }
    //else if(millis() >= timer + 4000 && millis() < timer + 5000 || millis() >= timer + 2000 && millis() < timer + 3000){
    //  image(grate2,x,y);
    //  if(dist(x+25,y+25, mainChar.x+25, mainChar.y +25) < 40){
    //    mainChar.loseHP();
    //  }
    //}
    //else if(millis() >= timer + 5000 && millis() < timer + 6000 || millis() >= timer + 1000 && millis() < timer + 2000){
    //  image(grate1,x,y);
    //}
    //else if(millis() >= timer + 4000){
    //  image(grate,x,y);
    //}
    else{
      image(grate,x,y);
    }
    if(millis() >= timer + 4000){
      timer = millis();
    }
  }
}