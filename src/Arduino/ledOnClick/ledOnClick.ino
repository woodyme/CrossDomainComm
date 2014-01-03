int inByte = 0;         // incoming serial byte
int ledPin = 13;
int R = 1;
int W = 2;
int N = 0;


void setup()
{
  // start serial port at 9600 bps:
  Serial.begin(9600);
  while (!Serial){
    ; // wait for serial port to connect. Needed for Leonardo only
  }
  
  pinMode(ledPin, OUTPUT); // digital led on pin 13
  establishContact();  // send a byte to establish contact until receiver responds 
}

void loop()
{
  // if we get a valid byte, read analog ins:
  if (Serial.available() > 0)
    {
      // get incoming byte:
      inByte = Serial.read();
      digitalWrite(ledPin, HIGH);
      delay(10);
      Serial.write(R);
    }
    else {
      digitalWrite(ledPin, LOW);
      //Serial.write(10);
      delay(10);
      Serial.write(W);
    }
}

void establishContact() {
  while (Serial.available() <= 0) {
    Serial.print(N);   // send a capital A
    delay(1000);
  }
}
