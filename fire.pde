class fire{
  PImage f1,f2;
  int x, y, vx, vy, timer, boundx,boundx1,boundy,boundy1;
  boolean vis;
  
  fire(){
    timer = millis();
    f1 = loadImage("fire1.png");
    f2 = loadImage("fire2.png");
    vis = true;
  }
  
  fire(int _x, int _y){
    x = _x;
    y = _y;
    timer = millis();
    f1 = loadImage("fire1.png");
    f2 = loadImage("fire2.png");
    vis = true;
  }
  
  fire(int _x, int _y, int _vx, int _vy){
    x = _x;
    y = _y;
    vx = _vx;
    vy = _vy;
    timer = millis();
    f1 = loadImage("fire1.png");
    f2 = loadImage("fire2.png");
    vis = true;
  }
    
  fire(int _x, int _y, int _vx, int _vy, int bx, int bx1, int by, int by1){
    x = _x;
    y = _y;
    vx = _vx;
    vy = _vy;
    boundx = bx;
    boundx1 = bx1;
    boundy = by;
    boundy1 = by1;
    timer = millis();
    f1 = loadImage("fire1.png");
    f2 = loadImage("fire2.png");
    vis = true;
  }
  
  void update(){
    x += vx;
    y += vy;
    if(dist(x+12,y+12, mainChar.x+25, mainChar.y +25) < 25){
      mainChar.loseHP();
    }
    if(x < boundx || x > boundx1){
      vx = -vx;
    }
    if(y < boundy || y > boundy1){
      vy = -vy;
    }
  }
  
  void display(){
    if(vis){
      if(millis() <= timer + 800){
        image(f1,x,y);
      }
      else{
        image(f2,x,y);
      }
      if(millis() >= timer + 1600){
        timer = millis();
      }
    }
  }
}