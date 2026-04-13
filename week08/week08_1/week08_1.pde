//week08-1 好玩的程式設計  黑白棋
size(620, 620);
background(#BCF9FF);
for(int i=0; i<10; i++){ //左手i 高度y
  for(int j=0; j<10; j++){ //右手j 寬度x
    int x=10 + j * 60, y = 10 + i * 60;
    fill(#BCF9FF);
    strokeWeight(2); //線條的粗細
    rect(x, y, 60, 60);
  }
}
