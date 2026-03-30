//week06-2 好玩的程式設計
void setup(){
  size(800,500);
}
int [][] a = new int[10][16]; //java的陣列寫法,和C++不同
//void mousePressed(){ //mouse按下去時，執行
void mouseDragged(){
  int i = mouseY/50, j = mouseX/50;
  a[i][j] = 120;
}
void draw(){
  background(255);
  for (int i=0; i<10; i++){
    for (int j=0; j<16; j++){
     if ( a[i][j] > 0 ) { 
       fill(#BEE9F5, a[i][j] * 4); //若陣列有值，設藍色
       a[i][j]--;
      }else fill(255); //沒有值，設白色
      rect( j*50, i*50, 50, 50);
    }
  }
}
