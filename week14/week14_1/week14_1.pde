//week14-1 好玩的程式設計 真的有地鼠的圖片
PImage img;  //圖片物件變數宣告
void setup() {
  size (300, 400);
  img = loadImage("gopher.png");
}
int [][]a = { {0,0,0}, {0,0,0}, {0,0,0} };//2D陣列
void draw() {
  background(#FFFFF2);
  if(frameCount%60==0){ //每過1秒(60 frames)要挑一隻地鼠跳起來
     int i = int(random(3)), j =  int(random(3)); //亂數挑地鼠
     a[i][j] = 60; //過60frames
  }
  for (int i=0; i<3; i++) { //對應y座標
    for (int j=0; j<3; j++) { //對應x座標
      float x = j*100, y = i*100+100;
      y -= 100*sin(a[i][j]*PI/60); //換算跳動座標sin()對應y座標
      if(a[i][j]>0) a[i][j]--; //讓地鼠跳然後慢慢回原位
      image(img, x, y, 100, 100);
    }
    rect(0, i*100+100, 300, 100);
  }
}
