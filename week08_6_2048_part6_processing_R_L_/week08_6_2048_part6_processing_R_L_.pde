//week08_6_2048_part6_processing_R_L_
import processing.serial.*;
Serial myPort;
color []c = {#CEC2B9, #EFE5DA, #EDE1CA, #EFB37E, #F69462, #F76513, #F76543};
color [] c2 = {#776E66, #776E66, #776E66, #FDF8F5, #FDF8F5, #FDF8F5};
int []N = {0, 2, 4, 8, 16, 32, 64};
int[][] B = {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}};
void keyPressed() {
  if(keyCode==LEFT) myPort.write('L');
  if (keyCode==RIGHT) {
    myPort.write('R');
    for (int i=0; i<4; i++) {
      int now = 3;
      for (int j=3; j>=0; j--) {
        if (B[i][j]>0) {
          B[i][now] = B[i][j];
          //while(now<3){
          while (now<3 && B[i][now+1]==B[i][now]) {
            B[i][now+1] *= 2;
            now++;
          }
          now--;
        }
      }
      for (int j=now; j>=0; j--) {
        B[i][j] = 0;
      }
    }
  }
  genTwo();
}
void genTwo() {
  int zero = 0;
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      if (B[i][j]==0) zero++;
    }
  }
  int ans = int(random(zero));
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      if (B[i][j]==0) {
        if (ans==0) {
          B[i][j] = 1;
          return;
        } else ans--;
      }
    }
  }
}

void setup() {
  size(420, 420);
  myPort = new Serial(this, "COM6", 9600);
}
void draw() {
  background(188, 174, 162);
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      int id = B[i][j];
      fill(c[id]);//fill(206, 194, 185);
      noStroke();
      rect(j*100+10, i*100+10, 90, 90, 5);
      fill(c2[id]);
      textAlign(CENTER, CENTER);
      textSize(60);
      text(N[id], j*100+55, i*100+55);
    }
  }
}
