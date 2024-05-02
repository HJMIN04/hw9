Ship [] aa;
pikachu ss;
int goal = 0, dead = 0, keeptext = 0;
void setup(){
 size(1200,800);
 aa = new Ship[3];
 for (int i = 0; i < 3; i++){
   aa[i] = new Ship(200 + 250*i, 10);
   ss = new pikachu();
 }
}
 void draw(){
   background(0, 255, 255);
   aa[0].collide(aa[1]);
   aa[0].collide(aa[2]);
   aa[1].collide(aa[2]);
   for (int i = 0; i < 3; i++){
   aa[i].spaceship();
   aa[i].move();
   ss.crash(aa[i]);
   }
   checkSuccess(ss.x, ss.y);
   ss.pika();
   if(goal==1) showSuccess();
   if(dead ==1) Fail();
 }
void keyPressed(){
  ss.keyMove();
}
void mousePressed(){
  if(goal !=0) {//clear
    if(mouseX > width/2 - 200 && mouseX < width/2 + 200
    && mouseY > height/2 + 300 && mouseY < height/2 + 400);
    ss.reset();
    dead = 0;
    goal = 0;
  }
  if(dead !=0) {//over
    if(mouseX > width/2 -200 && mouseX < width/2 + 200
    && mouseY > height/2 + 300 && mouseY < height/2 + 400)
    ss.reset();
    dead = 0;
    goal = 0;
  }
}
