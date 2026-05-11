//week12-1 好玩的程式設計 三角函數
void setup() {
  size(500, 500);
}
float a = 0;
void draw() {
  //Part1
  //float x = 250+cos(a)*200, y = 250+sin(a)*200;
  //ellipse(x,y,10,10);
  //a += 0.01;

  //Part2用for迴圈
  background(#FFFFF2);
  for (int i=0; i<6; i++) {
    float x = 250 + cos(a+i*PI/3)*200, y=250 + sin(a+i*PI/3)*100;
    //ellipse(x, y, 10, 10);
    rect(x-40,y-50,80,100);
  }
  a += 0.03;
}
