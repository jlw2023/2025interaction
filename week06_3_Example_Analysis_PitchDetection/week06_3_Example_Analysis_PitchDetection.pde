week06_3_Example_Analysis_PitchDetection
//找聲音最重要的頻率, 使用PitchDetection物件
/**

 * This sketch shows how to use the PitchDetector class to detect the pitch 
 * (also known as the 'fundamental frequency') of a sound signal. For complex 
 * signals this is not a trivial task, so the analyzer not only returns the pitch 
 * (measured in Hertz, or 'Hz') but also a 'confidence level' in that measurement.
 */

import processing.sound.*;

PitchDetector pitchDetector;//宣告PitchDetection物件變數
int i;

void setup() {
  size(640, 320);
  background(0);

  pitchDetector = new PitchDetector(this);//新增 初始化PitchDetection物件
  // capture audio input
  //pitchDetector.input(new AudioIn(this, 0));原本的程式 是用 Audio In音效卡音源輸入
}

void draw() {
  // clear column
  noStroke();
  fill(color(0));
  rect(i, 0, 1, height);

  // the array version of analyze() returns the detected pitch as well
  // as the confidence level in the correctness of that pitch
  float[] pitchAndConfidence = new float[2];
  pitchDetector.analyze(pitchAndConfidence);

  // don't draw measurements when there is absolutely 0 confidence in them
  if (pitchAndConfidence[1] > 0) {
    // draw all others: map the range of a human whistle (~40 - 2000Hz) to the height
    // of the sketch, and color the dot according to the confidence in this measurement
    fill(lerpColor(color(255, 0, 0), color(0, 255, 0), pitchAndConfidence[1]));

    circle(i, int(map(pitchAndConfidence[0], 2000, 40, 0, height)), 2);
  }

  i = (i+1) % width;
}
