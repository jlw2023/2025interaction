//week06_4_arduino_slow_jogging
void setup() {
  // put your setup code here, to run once:
  pinMode(8, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  tone(8, 780, 100);
  delay(333);
  tone(8, 320, 100);
  delay(333);
};
