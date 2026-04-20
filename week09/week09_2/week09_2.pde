//week09-2 好玩的程式設計
PImage img;
void setup(){
  size(600,500);
  img = loadImage("balloon.png");
}

void draw(){
   background(#FFFFF2);
   image(img, mouseX-96/2, mouseY-132, 96, 132);
}
