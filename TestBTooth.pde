int ledPin = 13;

void setup()
{
  Serial.begin(115200);
  pinMode(ledPin,OUTPUT);
}

void loop()
{
  if(Serial.available() > 0)
  {
     char cmd = Serial.read();
     Serial.print(cmd);
     if(cmd =='1')
     {
       digitalWrite(ledPin,HIGH);
     }
     else if(cmd =='0')
     {
        digitalWrite(ledPin,LOW);
     }
  }
  delay(20);
}

  
