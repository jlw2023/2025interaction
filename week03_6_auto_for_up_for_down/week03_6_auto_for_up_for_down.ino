//week03_auto_for_up)for_down
void setup() {
  for(int i=3; i<=13; i++){

    pinMode(i, OUTPUT);
  }
  // put your setup code here, to run once:

}


void loop() {
  for(int i=3; i<=13; i++){
    for(int k=3; k<=13; k++) digitalWrite(k, LOW);
    digitalWrite(i, HIGH);
    delay(200);

  }  
  for(int i=13; i>=3; i--){
    for(int k=3; k<=13; k++) digitalWrite(k, LOW);
    digitalWrite(i, HIGH);
    delay(200);// put your main code here, to run repeatedly:
  }
}
