//week07_3_arduino_blink_blink_blink_blink
void setup() {
  // put your setup code here, to run once:
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  for(int i=10; i<=13; i++){
  digitalWrite(13, LOW);
  digitalWrite(i-1, LOW);
  digitalWrite(i, HIGH);
  delay(500);

  }
}
