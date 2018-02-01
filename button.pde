class button{
  boolean mouseOver;
  int x,y,w,h;
  String s;
  
  button(){
  }
  
  button(int _x, int _y, int _w, int _h, String _s){
    x = _x; y = _y; w = _w; h = _h;
    s =_s;
  }
  
  void update(int mx, int my){
    if( mx >= x && mx <= x+w && my > y && my <= y+h ){
      mouseOver = true;
    }
    else{
      mouseOver = false;
    }
  }
  
  void display(color c){
    noStroke();
    noFill();
    rect(x,y,w,h);
    textSize(40);
    fill(c);
    text(s,x,y+h - 3);
  }
}