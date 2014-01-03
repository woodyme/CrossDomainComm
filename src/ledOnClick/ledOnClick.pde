import processing.serial.*;
import processing.net.*;
import cc.arduino.*;
Client myClient;
//Serial myPort;

Arduino arduino;
int value = 0;
int msg = 1;

void setup()
{
  //println(Arduino.list());
  //myPort = new Serial(this, Serial.list()[0], 9600);
  //arduino = new Arduino(this, Arduino.list()[0], 9600);
  //arduino.pinMode(ledPin, Arduino.OUTPUT);
  myClient = new Client(this, "192.168.1.105", 5334);
  //myClient.write("try{firmata.pinMode(1101, OUTPUT);}");
}

void draw(){
  //println(myPort.read());
  println(myClient.read());
  println(second());
  //delay(1000);
}

void mouseDragged()
{
  background(255, value, 0);
  //arduino.digitalWrite(ledPin, Arduino.HIGH);
  //myPort.write(1);
  myClient.write(msg);
  if (value > 200){
  value = 0;}
  else {  value = value + 20;
  }
  //delay(500);
  //arduino.digitalWrite(ledPin, Arduino.LOW);
  //myClient.write("try{firmata.digitalWrite(1101, LOW)}");
  //delay(500);
}
