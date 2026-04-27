//week10-2 好玩的程式設計 地鼠會冒出來
void setup() {
  size(300, 300);
}
int [][]a = {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}; //2D陣列
void draw() {
  background(#08BF3A) ;
  if (frameCount%60==0) {
    int i =int(random(3)), j=int(random(3));
    a[i][j]=60;
  }
  for (int i=0; i<3; i++) {
    for (int j=0; j<3; j++) {
      int x=j*100+50, y=i*100+50;
      if (a[i][j]>0) {
        fill(#BF7F08, a[i][j]*4);
        a[i][j]--;
      } else fill(#08BF3A);
      ellipse(x, y, 80, 80);
    }
  }
}
