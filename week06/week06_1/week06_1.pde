//week06-1 好玩的程式設計
void setup(){
  size(800,500);
}
int [][] a = new int[10][16]; //java的陣列寫法,和C++不同
void mousePressed(){
  int i = mouseY/50, j = mouseX/50;
  a[i][j] = 1;
}
void draw(){
  for (int i=0; i<10; i++){
    for (int j=0; j<16; j++){
     if ( a[i][j]==1 )  fill(#BEE9F5); //若陣列有值，設藍色
     else fill(255); //沒有值，設白色
     rect( j*50, i*50, 50, 50);
    }
  }
}
