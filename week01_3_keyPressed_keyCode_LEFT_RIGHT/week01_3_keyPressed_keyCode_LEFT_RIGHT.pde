//week01_3_keyPressed_keyCode_LEFT_RIGHT
void setup(){
  size(500, 500);
}
int x=200, y=250;
void draw(){
  
  background(#FFFFAA);//淡黃色
  
  rect(x, y, 100, 50);//作標畫方塊
  if(keyPressed && keyCode==LEFT) x-=3;
  if(keyPressed && keyCode==RIGHT) x+=3;
  
}//使用方向鍵來移動方塊
