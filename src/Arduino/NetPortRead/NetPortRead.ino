int tagOn = 8;
int tagOff = 0;
int ledPin = 13;

void setup()
{
  // start serial port at 9600 bps;
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for Leonardo only
  }
  pinMode(13, OUTPUT);
  //establishContact();
}

void loop()
{
  if (Serial.available() > 0){
    Serial.read();
    Serial.print(tagOn);
    Serial.print(",");
    Serial.println(tagOff);
  }
  digitalWrite(ledPin, HIGH);
  delay(500);
  digitalWrite(ledPin,LOW);
  delay(500);
}

/*void establishContact()
{
   while (Serial.available() <= 0)
   {
     Serial.print('A');   // send a capital A
     delay(300);
  }
}*/
