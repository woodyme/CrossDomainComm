int inByte = 0;         // incoming serial byte

void setup()
{
  // start serial port at 9600 bps:
  Serial.begin(9600);
  while (!Serial){
    ; // wait for serial port to connect. Needed for Leonardo only
  }
  
  pinMode(13, OUTPUT); // digital led on pin 13
  establishContact();  // send a byte to establish contact until receiver responds 
}

void loop()
{
  // if we get a valid byte, read analog ins:
  if (Serial.available() > 0)
    {
      // get incoming byte:
      inByte = Serial.read();
      digitalWrite(13, HIGH);
      delay(500);
      digitalWrite(13, LOW);
      Serial.write(20);
    }
    else {
      digitalWrite(13, LOW);
      //Serial.write(10);
      delay(500);
    }
}

void establishContact() {
  while (Serial.available() <= 0) {
    Serial.print('A');   // send a capital A
    delay(1000);
  }
}
