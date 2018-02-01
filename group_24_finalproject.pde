//import processing.sound.*;
//SoundFile file;
PImage startScreen;
PImage[] body = new PImage[10];
level lvl1,lvl2,lvl3,lvl4,lvl5,lvl6;
button start, cont, restart;
int gameState, timer, count, temp, counting;
hero mainChar;
String game_state, game_state_font;
PImage level1, level1fin, level2, level2fin, level3, level3fin, level4, level5,level5fin,level6;
PImage heart, emptyheart, damaged, shield1, shield2;
wall[] invis1 = new wall[6];
wall[] invis2 = new wall[13];
wall[] invis3 = new wall[11];
wall[] invis4 = new wall[6];
wall[] invis5 = new wall[7];
wall[] invis6 = new wall[10];
PFont font_name, font_second;
arrow[] a = new arrow[8];
arrow[] ab = new arrow[2];
cellblock butt1, butt2, butt3, butt4, butt5;
cellblock[][] buttons = new cellblock[4][4];
cellblock[] finalbutt = new cellblock[4];
grating[][] gArr1 = new grating[3][14];
grating[][] gArr2 = new grating[3][14];
grating[][] fgArr = new grating[14][4];
fire[] fiya = new fire[30];
fire[] fur = new fire[12];
PImage death, tr;
shield prot;


void setup(){
  size(800,800);
  count = 0;
  counting = 0;
  //file= new SoundFile(this, "pokemongrass.mp3");
 // file.play();
  startScreen = loadImage("guimenu2.png");
  start = new button(100,400,125,50, "Start");
  cont = new button(600,675,125,50, "Continue");
  restart = new button(350,575,125,50, "Restart?");
  mainChar = new hero();
  death = loadImage("skullandcrossbones.png");
  death.resize(400,400);
  level1 = loadImage("castle1.png");
  level1fin = loadImage("castle1comp.png");
  level2 = loadImage("castle2.png");
  level2fin = loadImage("castle2comp.png");
  level3 = loadImage("castle3.png");
  level3fin = loadImage("castle3comp.png");
  level4 = loadImage("castle4.png");
  level5 = loadImage("castle5.png");
  level5fin = loadImage("castle5comp.png");
  level6 = loadImage("castle6.png");
  damaged = loadImage("damaged.png");
  shield1 = loadImage("Shield.png");
  shield2 = loadImage("Shielddam.png");
  tr = loadImage("tree.png");
  lvl1 = new level(level1, level1fin);
  lvl2 = new level(level2,level2fin);
  lvl3 = new level(level3,level3fin);
  lvl4 = new level(level4,level4);
  lvl5 = new level(level5,level5fin);
  lvl6 = new level(level6,level6);
  prot = new shield();
  for (int i = 0; i < body.length; i++) {            //loop fills body[] array with picture of the character
    String imageName = "hero" + nf(i) + ".png";  
    body[i] = loadImage(imageName);
  }
  heart = loadImage("heart2.png");
  emptyheart = loadImage("heart1.png");
  invis1[0] = new wall(0,0,50,800);
    invis1[1] = new wall(0,0,350,50);
      invis1[2] = new wall(0,750,800,50);
        invis1[3] = new wall(750,0,50,800);
          invis1[4] = new wall(450,0,300,50);
            invis1[5] = new wall(350,0,100,50);
  invis2[0] = new wall(0,0,50,800);
    invis2[1] = new wall(0,0,350,300);
      invis2[2] = new wall(0,450,350,350);
        invis2[3] = new wall(750,0,50,800);
          invis2[4] = new wall(450,0,300,50);
            invis2[5] = new wall(350,0,100,50);
              invis2[6] = new wall(450,0,350,50);
                invis2[7] = new wall(450,0,350,350);
                  invis2[8] = new wall(50,300,100,50);
                    invis2[9] = new wall(250,300,100,50);
                      invis2[10] = new wall(450,500,350,300);
                        invis2[11] = new wall(450,450,100,50);
                          invis2[12] = new wall(650,450,100,50);
  invis3[0] = new wall(0,0,100,800);
    invis3[1] = new wall(200,550,200,350);
      invis3[2] = new wall(100,0,500,100);
        invis3[3] = new wall(500,100,100,500);
          invis3[4] = new wall(200,200,200,50);
            invis3[5] = new wall(200,250,50,200);
              invis3[6] = new wall(250,350,150,100);
                invis3[7] = new wall(250,350,150,100);
                  invis3[8] = new wall(400,700,400,100);
                    invis3[9] = new wall(700,0,100,700);
                      invis3[10] = new wall(600,0,100,50);
  invis4[0] = new wall(0,200,200,600);
    invis4[1] = new wall(0,0,350,200);
      invis4[2] = new wall(450,0,350,200);
        invis4[3] = new wall(200,600,400,200);
          invis4[4] = new wall(600,200,200,300);
            invis4[5] = new wall(700,500,100,300);
  invis5[0] = new wall(0,0,50,800);
    invis5[1] = new wall(0,0,350,50);
      invis5[2] = new wall(0,750,350,50);
        invis5[3] = new wall(750,0,50,800);
          invis5[4] = new wall(450,0,300,50);
            invis5[5] = new wall(350,0,100,50);
              invis5[6] = new wall(450,750,350,50);
  invis6[0] = new wall(0,0,50,800);
    invis6[1] = new wall(0,0,800,50);
      invis6[2] = new wall(0,750,350,50);
        invis6[3] = new wall(750,0,50,800);
          invis6[4] = new wall(450,750,350,50);
            invis6[5] = new wall(100,175,150,150);
              invis6[6] = new wall(450,125,150,150);
                invis6[7] = new wall(100,475,150,150);
                  invis6[8] = new wall(600,335,150,140);
                  invis6[9] = new wall(355,360,90,70);
              
  font_name = createFont("Kokonor", 60);
  font_second = createFont("Kokonor", 40);
  ab[0] = new arrow(0,360,6,0);
    ab[1] = new arrow(100,410,6,0);
  butt1 = new cellblock();butt1.x =50 ;butt1.y = 375;
    butt2 = new cellblock();butt2.x = 700; butt2.y = 375;
      butt3 = new cellblock();butt3.x =50 ;butt3.y = 375;
        butt4 = new cellblock();butt4.x = 700; butt4.y = 375;
          butt5 = new cellblock();butt5.x = 275; butt5.y = 275;
   fiya[0] = new fire(125,650, 2,0,100,175,0,800);
     fiya[1] = new fire(150,700, 2,0,100,175,0,800);
       fiya[2] = new fire(100,600, 2,0,100,175,0,800);
         fiya[3] = new fire(125,200, -2,0,100,175,0,800);
           fiya[4] = new fire(125,400, 2,0,100,175,0,800);
             fiya[5] = new fire(150,350, 2,0,100,175,0,800);
               fiya[6] = new fire(175,300, 2,0,100,175,0,800);
                 fiya[7] = new fire(150,250, -2,0,100,175,0,800);
                   fiya[8] = new fire(400,400, -1,0,400,475,0,800);
                     fiya[9] = new fire(425,350, -1,0,400,475,0,800);
                       fiya[10] = new fire(450,300, -1,0,400,475,0,800);
                         fiya[11] = new fire(475,250, 1,0,400,475,0,800);
                           fiya[12] = new fire(450,200, 1,0,400,475,0,800);
                             fiya[13] = new fire(670,575, 2,0,600,675,0,800);
                             fiya[14] = new fire(660,550, 2,0,600,675,0,800);
                             fiya[15] = new fire(650,525, 2,0,600,675,0,800);
                             fiya[16] = new fire(640,500, 2,0,600,675,0,800);
                             fiya[17] = new fire(630,475, 2,0,600,675,0,800);
                             fiya[18] = new fire(620,450, 2,0,600,675,0,800);
                             fiya[19] = new fire(610,425, 2,0,600,675,0,800);
                             fiya[20] = new fire(600,400, 2,0,600,675,0,800);
                             fiya[21] = new fire(610,375, -2,0,600,675,0,800);
                             fiya[22] = new fire(620,350, -2,0,600,675,0,800);
                             fiya[23] = new fire(630,325, -2,0,600,675,0,800);
                             fiya[24] = new fire(640,300, -2,0,600,675,0,800);
                             fiya[25] = new fire(650,275, -2,0,600,675,0,800);
                             fiya[26] = new fire(660,250, -2,0,600,675,0,800);
                             fiya[27] = new fire(300,450, 0,1,0,800,450,525);
                             fiya[28] = new fire(350,450, 0,1,0,800,450,525);
                             fiya[29] = new fire(250,450, 0,1,0,800,450,525);
      for(int i = 0 ; i < 3; i++ ){
        for(int j = 0; j < 14; j++){
          gArr1[i][j] = new grating(150 + 50 *i,50 + j*50,0);
          gArr2[i][j] = new grating(500 + 50 *i,50 + j*50,0);
        }
      }
      for(int i = 0 ; i < 14; i++ ){
        for(int j = 0; j < 4; j++){
          if(j > 1){
            fgArr[i][j] = new grating(50 + 50*i, -50 + 50*j,0);
          }
          else{
            fgArr[i][j] = new grating(50 + 50*i, 350 + 50*j,0);
          }
        }
      }
      for(int i = 0; i <4 ; i++){
        for(int j = 0; j <4; j++){
          float r = random(0,49);
          buttons[i][j] = new cellblock();
          buttons[i][j].x = 300 + i*50;
          buttons[i][j].y = 300 + j*50;
          if(r <= 24){
            buttons[i][j].red = !buttons[i][j].red;
          }
        }
      }
      for(int i = 0; i<4; i++){
        finalbutt[i] = new cellblock();
      }
      finalbutt[0].x = 175;
      finalbutt[0].y = 175;
        finalbutt[1].x = 575;
        finalbutt[1].y = 175;
          finalbutt[2].x = 175;
          finalbutt[2].y = 575;
            finalbutt[3].x = 575;
            finalbutt[3].y = 575;
       fur[0] = new fire(186,136,1,1,136,236,136,236);
         fur[1] = new fire(186,112,1,1,112,261,112,261);
           fur[2] = new fire(186,87,1,1,87,286,87,286);
             fur[3] = new fire(586,136,1,1,536,636,136,236);
             fur[4] = new fire(586,112,1,1,512,661,112,261);
             fur[5] = new fire(586,87,1,1,487,686,87,286);
               fur[6] = new fire(186,536,1,1,136,236,536,636);
               fur[7] = new fire(186,512,1,1,112,261,512,661);
               fur[8] = new fire(186,487,1,1,87,286,487,686);
                  fur[9] = new fire(586,536,1,1,536,636,536,636);
                  fur[10] = new fire(586,512,1,1,512,661,512,661);
                  fur[11] = new fire(586,487,1,1,487,686,487,686);
        a[0] = new arrow(250,50,0,7);
        a[1] = new arrow(300,100,0,7);
        a[2] = new arrow(450,150,0,7);
        a[3] = new arrow(500,200,0,7);
        a[4] = new arrow(50,250,7,0);
        a[5] = new arrow(100,300,7,0);
        a[6] = new arrow(150,450,7,0);
        a[7] = new arrow(200,500,7,0);
}








void draw(){
  if(gameState == 0){
    image(startScreen,0,0);
    butt1.red = false; butt2.red = false; butt3.red = false; butt4.red = false; butt5.red = false;
    finalbutt[0].red = false; finalbutt[1].red = false; finalbutt[2].red = false; finalbutt[3].red = false;
    start.display(color(115,255,255));
    fill(115,255,255);
    textFont(font_name);
    text("The Game", 100,400);
    start.update(mouseX,mouseY);
    if(start.mouseOver && mousePressed){
      gameState = 1;
    }
  }
  else if(gameState == 1){
    background(0);
    textFont(font_second);
    text("Hero,\nyou have been kidnapped by Loki, \ngod of tricks and riddles. \nHe has taken your sword and \nplaced it at the end of this dungeon.\nGo forth, Hero, \nand defeat Loki at his own game.",10,70);
    cont.display(color(115,255,255));
    cont.update(mouseX,mouseY);
    if(cont.mouseOver && mousePressed){
      gameState = 2;
    }           
  }
  else if(gameState == 2){
    background(255);
    count = 0;
    lvl1.display();
    for(int i = 0; i < 6; i++){
      if(lvl1.isFin){
        if(i==5){
        }
        else{
          invis1[i].update();
        }
      }
      else{
        invis1[i].update();
      }
    }
   for(int i = 0 ; i < 3; i++ ){
     for(int j = 0; j <14;j++){
       gArr1[i][j].display();
       gArr2[i][j].display();
     }
  }
    butt1.update(); 
    butt2.update(); butt2.display();butt1.display();
    mainChar.update();
    mainChar.display();
    prot.display();
    if(butt1.red && butt2.red){
      lvl1.isFin = true;
    }
    else{
      lvl1.isFin = false;
    }
    if(mainChar.y < -50){
      gameState = 3;
      mainChar.y = 799;
    }
    
  }
  else if(gameState == 3){
    lvl2.display();
    for(int i = 0; i < 13; i++){
      if(lvl2.isFin){
        if(i==5){
        }
        else{
          invis2[i].update();
        }
      }
      else{
        invis2[i].update();
      }
    }
    if(ab[0].x > 750){
      ab[0].x = 0;
    }
    if(ab[1].x > 750){
      ab[1].x = 0;
    }
    butt3.update(); 
    butt4.update(); butt4.display();butt3.display();
    ab[0].update();
    ab[0].display();
    ab[1].update();
    ab[1].display();
    mainChar.update();
    mainChar.display();
    prot.display();
    if(butt3.red && butt4.red){
      lvl2.isFin = true;
    }
    else{
      lvl2.isFin = false;
    }
    if(mainChar.y > 800){
      gameState = 2;
      mainChar.y = 0;
    }
    if(mainChar.y < -50){
      gameState = 4;
      mainChar.y = 750;
      mainChar.x -= 250;
    }
  }
  else if(gameState == 4){
    lvl3.display();
    for(int i = 0; i < invis3.length; i++){
        if(lvl3.isFin){
        if(i==10){
        }
        else{
          invis3[i].update();
        }
      }
      else{
        invis3[i].update();
      }
    }
    for(int i = 0; i < fiya.length; i++){
      fiya[i].display(); fiya[i].update();
    }
    butt5.update();butt5.display();
    mainChar.update();
    mainChar.display();
    prot.display();
    if(mainChar.y > 800){
      gameState = 3;
      mainChar.y = 0;
      mainChar.x += 250;
    }
    if(mainChar.y < -50){
      gameState = 5;
      mainChar.y = 750;
    }
    if(butt5.red){
      lvl3.isFin = true;
    }
    else{
      lvl3.isFin = false;
    }
  }
  else if(gameState == 5){
    lvl4.display();
    counting = 0;
    for(int i = 0; i < invis4.length; i++){
      invis4[i].update();
    }
    for(int i = 0; i <4 ; i++){
      for(int j = 0; j <4; j++){
        buttons[i][j].display();
        buttons[i][j].update();
      }
    }
    for(int i = 0; i <4 ; i++){
      for(int j = 0; j <4; j++){
        if(buttons[i][j].red){
          counting ++;
        }
        else{
          counting --;
        }
      }
    }
    if((counting == 16 || counting == -16) && mainChar.already == false){
      mainChar.shield = 2;
      mainChar.already = true;
    }
    mainChar.update();
    mainChar.display();
    prot.display();
    if(mainChar.y > 800){
      gameState --;
      mainChar.y = -50;
    }
    if(mainChar.y < -50){
      gameState ++;
      mainChar.y = 750;
    }
  }
  else if(gameState == 6){
    lvl5.display();
    for(int i = 0; i < invis5.length; i++){
      if(lvl5.isFin){
        if(i == 5){
        }
        else{
          invis5[i].update();
        }
      }
      else{
        invis5[i].update();
      }
    }
    for(int i = 0; i <finalbutt.length; i++){
      finalbutt[i].display();
      finalbutt[i].update();
    }
      for(int i = 0 ; i < 14; i++ ){
        for(int j = 0; j < 4; j++){
          fgArr[i][j].display();
        }
      }
    for(int i = 0; i < fur.length; i++){
      fur[i].update();
      fur[i].display();
    }
    for(int i = 0; i <8; i++){
      a[i].update();
      a[i].display();
      if(a[i].x > 750 || a[i].x < 50 || a[i].y > 750 || a[i].y < 50) {
        a[i].vx = - a[i].vx;
        a[i].vy = - a[i].vy;
      }
    }
    mainChar.update();
    mainChar.display();
    prot.display();
    if(finalbutt[0].red && finalbutt[1].red && finalbutt[2].red && finalbutt[3].red ){
      lvl5.isFin = true;
    }
    if(mainChar.y > 800){
      gameState --;
      mainChar.y = -50;
    }
    if(mainChar.y < -50){
      gameState ++;
      mainChar.y = 750;
    }
  }
  else if(gameState == 7){
    lvl6.display();
    image(tr,350,350);
    for(int i = 0; i < invis6.length; i++){
      invis6[i].update();
    }
    mainChar.update();
    mainChar.display();
    prot.display();
    if(mainChar.x >= 355 && mainChar.x <= 445 && mainChar.y <= 435 && mainChar.y >= 430){
      lvl6.isFin = true;
    }
    if(lvl6.isFin){
      textSize(100);
      fill(255);
      text("You Win!!!", 175,200);
    }
    if(mainChar.y > 800){
      gameState --;
      mainChar.y = -50;
    }
  }
  else if(gameState == 20){
    if(key == 'u' && keyPressed){
      gameState = temp;
    }
    fill(255);
    textSize(56);
    text("Paused", 300,300);
    textSize(20);
    text("Press 'u' to release", 310,325);
  }
  else if(gameState == 21){
    image(death,200,200);
  }
  if(key == 'p' && keyPressed && gameState != 20){
    temp = gameState;
    gameState = 20;
  }
  if(!mainChar.hArr[0] &&!mainChar.hArr[1] &&!mainChar.hArr[2] &&!mainChar.hArr[3] &&!mainChar.hArr[4]){
    gameState = 21;
  }
  
}