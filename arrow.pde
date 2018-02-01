class arrow{
int x, y, vx,vy;
PImage airoL, airoR, airoD, airoU;

  arrow(int _x, int _y, int _vx, int _vy){
    airoL = loadImage("arrowL.png");
    airoR = loadImage("arrowR.png");
    airoU = loadImage("arrowU.png");
    airoD = loadImage("arrowD.png");
    x= _x;
    y= _y;
    vx= _vx;
    vy= _vy;
  }

  void update(){
    x+= vx;
    y+= vy;
    if(dist(x+12,y+12, mainChar.x+25, mainChar.y +25) < 25){
      mainChar.loseHP();
    }
  }
  
  void display(){
    if(x < 50 || x > 750 || y < 50 || y > 750 ){
    }
    else{
      if(vx < 0 && vy == 0){
        image(airoL,x,y);
      }
      else if(vx > 0 && vy ==0){
        image(airoR,x,y);
      }
      else if(vy < 0 && vx ==0){
        image(airoU,x,y);
      }
      else if(vy > 0 && vx ==0){
        image(airoD,x,y);
      }
    }
  }
}