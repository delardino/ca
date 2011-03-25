#include "ca.h"

const int IRpin1 = 0; // analog input for IR sensor 1
const int IRpin2 = 1; // analog input for IR sensor 2
const int SonarPin = 7; //pin for the Sonar sensor
const int ledPin1 = 13; // pin for led1
const int ledPin2 = 12; // pin for led2

void setup()
{
  Serial. begin(9600);
  pinMode(ledPin1,OUTPUT);
  pinMode(ledPin2,OUTPUT);
}

void loop(){
  float distance_ir1= ir(IRpin1);
  float distance_ir2= ir(IRpin2);
  // float distance_sonar= sonar(SonarPin);

  Serial.print("IR sensor 1: ");
  Serial.println(distance_ir1);

  Serial.print("IR sensor 2: ");
  Serial.println(distance_ir2);

  // Serial.print("Sonar : ");
  // Serial.println(distance_sonar);

  if( distance_ir1<100)
    digitalWrite(ledPin1,HIGH);
  else
    digitalWrite(ledPin1,LOW);

  if(distance_ir2<100)
    digitalWrite(ledPin2,HIGH);
  else
    digitalWrite(ledPin2,LOW);
    
    
    

  delay(1000); // arbitary wait time

}


