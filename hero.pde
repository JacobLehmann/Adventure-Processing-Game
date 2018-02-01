class hero{
  int direction, x, y;
  boolean running, moving, toggle, left, dmg, already;
  boolean Right, Left, Up, Down;
  int time, timerHP, shield;
  boolean[] hArr = new boolean[5];
  
  hero(){
    time = millis();
    direction = 0;
    x= 375;
    y=700;
    moving = false;
    toggle = false;
    left = false;
    Down = true;
    Left = true;
    Right = true;
    Up = true;
    shield = 0;
    already = false;
    for(int i = 0; i <5; i++){
      hArr[i] = true;
    }
  }
  
  void display(){
    for(int i = 0; i <5; i++){
      if(hArr[i] == true){
        image(heart, i*30 + 4,4);
      }
      else{
        image(emptyheart, i*30 +4,4);
      }
    }
    switch(direction){
      case 0:
        if(moving){
          if(left){
            image(body[1],x,y);
          }
          else{
            image(body[2],x,y);
          }
        }
        else{
        image(body[0],x,y); 
        }
        break;
      case 1:
        if(moving){
            if(left){
              image(body[6],x,y);            
            }
            else{
            image(body[5],x,y);
            }
        }
        else{
        image(body[4],x,y); 
        }
        break;
      case 2:
        if(moving){
          if(left){
            image(body[9],x,y);
          }
          else{
            image(body[8],x,y);
          }
        }
        else{
          image(body[8],x,y);
        }
        break;
      case 3:
        if(moving){
          if(left){
            image(body[7],x,y);
          }
          else{
            image(body[3],x,y);
          }
        }
        else{
          image(body[3],x,y);
        }
        break;
      default:
        break;
    }
  }
  
  void update(){
    if(millis()-time >= 150){
      time = millis();
      toggle = !toggle;
      left = !left;
    }
    if(key == CODED && keyPressed){
      moving = true;
    }
    else{
      moving = false;
    }
    switch(keyCode){
      case UP:
        direction = 0;
        break;
      case DOWN:
        direction = 1;
        break;
      case LEFT:
        direction = 2;
        break;
      case RIGHT:
        direction = 3;
    }
    if(moving){
      switch(direction){
        case 0:
          if(Up){
            y-=4;
            Down = true;
            Left = true;
            Right = true;
          }
          break;
        case 1:
          if(Down){
            y+=4;
            Up = true;
            Left = true;
            Right = true;
          }
          break;
        case 2:
          if(Left){
            x-=4;
            Down = true;
            Up = true;
            Right = true;
          }
          break;
        case 3:
          if(Right){
            x+=4;
            Down = true;
            Left = true;
            Up = true;
          }
          break;
        default:
          break;
      }
    }
  }
  
  void loseHP(){
    if(millis() >= timer + 1000){
      dmg = true;
      timer = millis();
      image(damaged, x-25, y-25);
    }
    if(millis() <= timer + 1000){
     image(damaged, x-25, y-25);
    }
    if(dmg){
      if(shield == 2){
        shield --;
      }
      else if(shield == 1){
        shield --;
      }
      else if(hArr[4]){
        hArr[4] = false;
      }
      else if(hArr[3]){
        hArr[3] = false;
      }
      else if(hArr[2]){
        hArr[2] = false;
      }
      else if(hArr[1]){
        hArr[1] = false;
      }
      else if(hArr[0]){
        hArr[0] = false;
      }
    }
    dmg = false;
  }
}