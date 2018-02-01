class boulder{
  
  float x,y,scale;
  
  float[] coordinates;
  
  PShape boulder;
  
  boulder(float _x, float _y){
    
    x = _x;
    y = _y;
    scale = 0.125;
    boulder = loadShape("rocket.svg");
    
  }
  
  void display(){
    
    pushMatrix();
    translate(x,y);
    shape(boulder, x,y,boulder.width*scale, boulder.height*scale);
    popMatrix();
  }
  
  float[] return_coordinates(){
   
    coordinates[0] = x;
    coordinates[1] = y;
    
    return coordinates;
  }
}