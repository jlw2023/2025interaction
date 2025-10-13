/**
 * This sketch shows how to use the Waveform class to analyze a stream
 * of sound. Change the number of samples to extract and draw a longer/shorter
 * part of the waveform.
 */
// 這個程式碼範例展示了如何使用 Waveform 類別來分析一個音訊串流。
// 改變取樣點（samples）的數量可以擷取並繪製出更長/更短的波形片段。

import processing.sound.*;

// 註解在代碼中重複，翻譯一次即可
// SoundFile sample;
// Waveform waveform;

// Declare the sound source and Waveform analyzer variables
// 宣告音源和波形分析器的變數
SoundFile sample;
Waveform waveform;

// Define how many samples of the Waveform you want to be able to read at once
// 定義您希望一次能讀取多少波形取樣點的數量
int samples = 100;

public void setup() {
  size(640, 360);
  background(255);

  // Load and play a soundfile and loop it.
  // 載入並播放一個音訊檔案，並讓它循環播放。
  sample = new SoundFile(this, "beat.aiff");
  sample.loop();//循環播放 (保留原文的中文註解)

  // Create the Waveform analyzer and connect the playing soundfile to it.
  // 建立 Waveform 波形分析器，並將正在播放的音訊檔案連接到它。
  waveform = new Waveform(this, samples);
  waveform.input(sample);
}

public void draw() {
  // Set background color, noFill and stroke style
  // 設定背景顏色、取消填充和線條樣式
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  // Perform the analysis
  // 執行分析
  waveform.analyze();//進行播型的分析 (保留原文的中文註解)
  
  beginShape();
  for(int i = 0; i < samples; i++){
    // Draw current data of the waveform
    // 繪製波形的當前數據
    // Each sample in the data array is between -1 and +1 
    // 數據陣列中的每個取樣點（sample）值介於 -1 到 +1 之間
    vertex(
      map(i, 0, samples, 0, width),
      map(waveform.data[i], -1, 1, 0, height)
    );
  }
  endShape();
}
