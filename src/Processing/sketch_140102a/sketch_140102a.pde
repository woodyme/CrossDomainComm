import processing.serial.*;
import processing.net.*;
import cc.arduino.*;
Client myClient;

Arduino arduino;
int ledPin = 13;

void setup()
{
  //myClient = new Client(this, "192.168.1.105", 5334);
  //println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  arduino.pinMode(ledPin, Arduino.OUTPUT);
}

void draw()
{
  arduino.digitalWrite(ledPin, Arduino.HIGH);
  //myClient.write("ledPin, Arduino.HIGH");
  //myClient.read();
  delay(500);
  arduino.digitalWrite(ledPin, Arduino.LOW);
  delay(500);
}
