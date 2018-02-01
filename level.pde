class level{
  PImage bg, f;
  cellblock[] arr = new cellblock[25];
  boolean isFin;
  
  level(){
    isFin = false;
    
  }
  
  level(PImage _bg, PImage _f){
    f = _f;
    bg = _bg;
    isFin = false;
    for(int i = 0; i < 25; i++){
       arr[i]= new cellblock();
    }
    for(int i = 0; i < 5; i++){
      for(int j = 0; j < 5; j++){
        arr[i*5+j].x = 275 + 50*i;
        arr[i*5+j].y = 250 + 50*j;
      }
    }
  }
  
  void display(){
    noStroke();
    fill(0);
    if(isFin){
      image(f,0,0);
    }
    else{
      image(bg,0,0);
    }
    //for(int i = 0; i < 16; i++){
    // for(int j = 0; j < 16; j++){
    //   if(arr[(i*16)+j].occupied == true){
    //     rect(i*50,j*50, (i*50)+50, (j*50)+50 );
    //   }      
    // }
    //}
  }
}