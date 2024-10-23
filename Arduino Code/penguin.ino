#define BUTTON_PIN 2 //button pin 
#define POTENTIOMETER_PIN 13 //potentiometer pin 
int xyzPins[] = {39, 32, 33};   //x, y, z(switch) pins


void setup() {
 Serial.begin(9600);
 pinMode(BUTTON_PIN, INPUT_PULLUP); // use internal pullup resistor
 pinMode(xyzPins[2], INPUT_PULLUP);  // pullup resistor for switch

}

void loop() {
  // put your main code here, to run repeatedly:
  int buttonState = digitalRead(BUTTON_PIN);
  int xVal = analogRead(xyzPins[0]);
  int yVal = analogRead(xyzPins[1]);
  int zVal = digitalRead(xyzPins[2]);
  int po = analogRead(POTENTIOMETER_PIN);

  Serial.printf("%d,%d,%d,%d,%d", xVal, yVal, zVal, buttonState, po); // change to print all values 
  Serial.println();
  delay(100);

}
