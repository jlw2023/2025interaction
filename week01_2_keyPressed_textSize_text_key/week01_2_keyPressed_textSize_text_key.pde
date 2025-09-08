//file-New(Ctrl-N)開心的專案\
//week01_2_keyPressed_textSize_text_key

void setup(){
  size(500,500);
}
void draw(){
  if(keyPressed){
    background(#FF0000);
    textSize(80);
    text(""+key, 100, 100);
  }
}
