
float ir(int IRpin) 
{
  float volts = analogRead(IRpin)*0.0048828125; 
  // value from sensor * (5/1024) - if running 3.3.volts then change 5 to 3.3
  Serial.print("Volts ");
  Serial.println(volts); 
  float distance = 65*pow(volts, -1.10); 
  // worked out from graph 65 = theretical distance / (1/Volts)S - luckylarry.co.uk
  return distance;
}

