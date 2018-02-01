class shield{
  int x, y;
  shield(){
   x = mainChar.x;
   y = mainChar.y;
 }
 
 void display(){
   if(mainChar.shield == 2){
     image(shield2, mainChar.x -25, mainChar.y -25);
   }
   else if(mainChar.shield == 1){
     image(shield1, mainChar.x -25, mainChar.y -25);
   }
   else{
   }
 }
}