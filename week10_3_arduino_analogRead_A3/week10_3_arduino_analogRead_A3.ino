//week10_3_arduino_analogRead_A3
void setup() {
  // put your setup code here, to run once:
  pinMode(2, INPUT_PULLUP);
  //pinMode(3, INPUT);
  pinMode(8, OUTPUT);
}

void loop() {
  int now = analogRead(A3);
  if (now > 800){
    tone(8, 523, 100);
    delay(100);
    tone(8, 784, 100);
    delay(100);
  }
    else if(now <200){
      tone(8, 784, 100);
      delay(100);
      tone(8, 523, 100);
      delay(100);
    }
  
  // put your main code here, to run repeatedly:

}
