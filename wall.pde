class wall{
  int x,y,w,h;
 
  wall(int _x, int _y, int _w, int _h){
    x= _x;
    y = _y;
    w = _w;
    h = _h;
  }
  
  void update(){
    //fill(255,0,0);
    //rect(x,y,w,h);
    if(mainChar.x >= x -45 && mainChar.x <= x+w-45 && mainChar.y >= y - 50 && mainChar.y <= y+h){
      mainChar.Right = false;
    }
    if(mainChar.x >= x && mainChar.x <= x+w-5 && mainChar.y >= y - 50 && mainChar.y <= y+h){
      mainChar.Left = false;
    }
    if(mainChar.x >= x - 40 && mainChar.x <= x+w-10 && mainChar.y <= y+h+5 && mainChar.y >= y+h){
      mainChar.Up = false;
    }
    if(mainChar.x >= x - 40 && mainChar.x <= x+w-10 && mainChar.y <= y-50 && mainChar.y >= y-55){
      mainChar.Down = false;
    }
  }
}