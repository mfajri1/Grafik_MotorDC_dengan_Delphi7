// kecepatan motor DC dengan potensio meter/trimpot

const int PIN_BASE = 7; //di hubungkan ke pin 11 digital PWM
void setup() {
  // put your setup code here, to run once:
pinMode(PIN_BASE, OUTPUT);    //sebagai keluaran
Serial.begin(9600);
}

void loop() {
 int nilai = analogRead(0);    //sinyal analog di baca pada pin 0 analog IN
 analogWrite(PIN_BASE, 1023 );    //keluaran kecepatan motor tergantung nilai yg terima oleh Pin Analog IN 
 Serial.println(nilai); //tampil kecepatan motor di serial monitor
 delay(1000);
}
