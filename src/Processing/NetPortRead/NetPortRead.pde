import processing.serial.*;
import processing.net.*;
import cc.arduino.*;
Client myClient;
PFont myFont;
int inInt;
byte[] byteBuffer = new byte[10];
String myString;
float tagOn = 9;
float tagOff = 9;

Arduino arduino;
int ledPin = 13;

void setup()
{
  //myFont = loadFont("arial.ttf");
  //textFont(myFont, 18);
  //println(Arduino.list());
  //arduino = new Arduino(this, Arduino.list()[0], 57600);
  //arduino.pinMode(ledPin, Arduino.OUTPUT);
  myClient = new Client(this, "192.168.1.105", 5334);
  myClient.write(1);
}

void draw()
{
  if (myClient.available() > 0)
  {
    // Read in the bytes
    //int byteCount = myClient.readBytes(byteBuffer);
    //if (byteCount > 0) {
      // Convert the byte array to a String
      //String myString = new String(byteBuffer);
    //}
  }
  //inInt = myClient.read();
  println(second());
  //println(myString);
  //println(inInt);
  //arduino.digitalWrite(ledPin, Arduino.HIGH);
  //myClient.write("try{firmata.digitalWrite(1101, HIGH)}");
  //delay(500);
  //arduino.digitalWrite(ledPin, Arduino.LOW);
  //myClient.write("try{firmata.digitalWrite(1101, LOW)}");
  //delay(500);
  myString = myClient.readString();
  println(myString);
  if (myString != null){
    myString = trim(myString);
    float[] tags = float(split(myString, ","));
    if (tags.length >=2){
      tagOn = tags[0];
      tagOff = tags[1];
    }
  }
    println(tagOn);
    println(tagOff);
}

