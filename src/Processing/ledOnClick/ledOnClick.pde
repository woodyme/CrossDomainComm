import processing.serial.*;
import processing.net.*;
import cc.arduino.*;
Client myClient;

Arduino arduino;
int value = 0;

void setup()
{
  //println(Arduino.list());
  //arduino = new Arduino(this, Arduino.list()[0], 57600);
  //arduino.pinMode(ledPin, Arduino.OUTPUT);
  myClient = new Client(this, "192.168.1.105", 5334);
  //myClient.write("try{firmata.pinMode(1101, OUTPUT);}");
}

void draw(){
  background(255, value, 0);
  //println(myClient.read());
}

void mouseDragged()
{
  //arduino.digitalWrite(ledPin, Arduino.HIGH);
  myClient.write(1);
  if (value > 200){
  value = 0;}
  else {  value = value + 20;
}
  //delay(500);
  //arduino.digitalWrite(ledPin, Arduino.LOW);
  //myClient.write("try{firmata.digitalWrite(1101, LOW)}");
  //delay(500);
}
