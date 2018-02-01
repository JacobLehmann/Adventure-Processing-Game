class cellblock{
  boolean red, stepoff;
  PImage r,b;
  int x,y, mx,my, t, _x, _y;
  
  cellblock(){
    red = false;
    stepoff = true;
    r = loadImage("buttonwh.png");
    b = loadImage("buttonor.png");
    t = millis();
    _x = x + 25;
    _y = y + 25;
  }
  
  void update(){
    mx = mainChar.x + 25;
    my = mainChar.y + 25;
   // if(mx >= (x + 5) && mx <= (x + 45) && my >= (y + 5) && my <= (y + 45) && stepoff){
    if(dist(x+25,y+25, mainChar.x+25, mainChar.y +25) < 35 && stepoff){
      red = !red;
      stepoff = false;
    }
   // if(mx <= (x - 45) || mx >= (x + 45) || my <= (y - 45) || my >= (y + 45)){
    if(dist(x+25,y+25, mainChar.x+25, mainChar.y +25) > 35){
     stepoff = true;
    }
  }
  
  void display(){
    if(red){
      image(r,x,y);
    }
    else{
      image(b,x,y);
    }
  }
}