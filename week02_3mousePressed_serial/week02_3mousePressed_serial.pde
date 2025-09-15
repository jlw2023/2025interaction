///week02_3mousePressed_serial
import processing.serial.*;//第1行 
Serial myPort;//地2行 宣告USB的Serial變數myPort
void mousePressed(){
  myPort.write(' ');
}


void setup(){
  size(400,400);
  myPort = new Serial(this, "COM4", 9600);
}
void draw(){
 if(mousePressed) background(#FF0000);
 else background(#00FF00);
}
