#include <RobotIRremote.h>
#include <RobotIRremoteInt.h>
#include <RobotIRremoteTools.h>
#include <AFMotor.h>
#include <Servo.h>

//initial motors pin
AF_DCMotor motor1(1, MOTOR12_1KHZ); //motor no.1 for wheel 
AF_DCMotor motor2(2, MOTOR12_1KHZ); //motor no.2 for wheel 
AF_DCMotor motor3(3, MOTOR34_1KHZ); //motor no.3 for wheel 
AF_DCMotor motor4(4, MOTOR34_1KHZ); //motor no.4 for wheel 
AF_DCMotor motor5(5, MOTOR34_1KHZ); //motor no.5 for drill
AF_DCMotor motor7(7, MOTOR7);  //motor for conveyer belt
Servo myservo1;  //servo motor for dropping the sapling
Servo myservo2;  //servo motor for compost tank
AF_DCMotor motor6(6, MOTOR6);  //motor for water tank  



int pos = 0; // variable to store the servo position

int val;
int Speeed = 255;

void setup()
{
  Serial.begin(9600);  //Set the baud rate to your Bluetooth module.
  myservo1.attach(9);  // attaches the servo on pin 9 to the servo object
  myservo2.attach(8);  // attaches the servo on pin 8 to the servo object
  pinMode(5, OUTPUT);    // sets the digital pin 5 as output for drill
  pinMode(10, OUTPUT);    // sets the digital pin 10 as output for drill
  pinMode(7, OUTPUT);    // sets the digital pin 7 as output for conveyer belt
  pinMode(9, OUTPUT);    // sets the digital pin 9 as output for servo1
  pinMode(8, OUTPUT);    // sets the digital pin 8 as output for servo2
  pinMode(6, OUTPUT);    // sets the digital pin 6 as output for water tank
 
}
void loop() {
  if (Serial.available() > 0) {
    val = Serial.read();

    Stop(); //initialize with motors stoped

    if (val == 'F') {
      forward();
    }

    if (val == 'B') {
      back();
    }

    if (val == 'L') {
      left();
    }

    if (val == 'R') {
      right();
    }
   
    if (val == 'T') {
      Stop();
    }
    {
  digitalWrite(5, HIGH); // sets the digital pin 5 on for moving drill down
  delay(9000);            // waits for a 9 seconds
  digitalWrite(5, LOW);  // sets the digital pin 5 off
 
     
       {
  digitalWrite(10, HIGH); // sets the digital pin 10 on for moving drill up
  delay(9000);            // waits for 9 seconds
  digitalWrite(10, LOW);  // sets the digital pin 10 off
     
  digitalWrite(7, HIGH); // sets the digital pin 7 on
  delay(1000);            // waits for a second
  digitalWrite(7, LOW);  // sets the digital pin 7 off   
  
    {
  for (pos = 0; pos <= 90; pos += 1) { // goes from 0 degrees to 90 degrees for dropping the sapling
    // in steps of 1 degree
    myservo1.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15 ms for the servo to reach the position
  }

   
    {
  for (pos = 0; pos <= 100; pos += 1) { // goes from 0 degrees to 100 degrees to drop compost
    // in steps of 1 degree
    myservo2.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15 ms for the servo to reach the position
  }
  for (pos = 100; pos >= 0; pos -= 1) { // goes from 100 degrees to 0 degrees
    myservo2.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15); 
    {
            break;
        }
    { digitalWrite(6, HIGH); // sets the digital pin 6 on
  delay(5000);            // waits for 5 seconds
  digitalWrite(6, LOW);  // sets the digital pin 6 off
      {
            break;
        }
  }
}






void forward()
{
  motor1.setSpeed(Speeed); //Define maximum velocity
  motor1.run(FORWARD); //rotate the motor clockwise
  motor2.setSpeed(Speeed); //Define maximum velocity
  motor2.run(FORWARD); //rotate the motor clockwise
  motor3.setSpeed(Speeed);//Define maximum velocity
  motor3.run(FORWARD); //rotate the motor clockwise
  motor4.setSpeed(Speeed);//Define maximum velocity
  motor4.run(FORWARD); //rotate the motor clockwise
}

void back()
{
  motor1.setSpeed(Speeed); //Define maximum velocity
  motor1.run(BACKWARD); //rotate the motor anti-clockwise
  motor2.setSpeed(Speeed); //Define maximum velocity
  motor2.run(BACKWARD); //rotate the motor anti-clockwise
  motor3.setSpeed(Speeed); //Define maximum velocity
  motor3.run(BACKWARD); //rotate the motor anti-clockwise
  motor4.setSpeed(Speeed); //Define maximum velocity
  motor4.run(BACKWARD); //rotate the motor anti-clockwise
}

void left()
{
  motor1.setSpeed(Speeed); //Define maximum velocity
  motor1.run(BACKWARD); //rotate the motor anti-clockwise
  motor2.setSpeed(Speeed); //Define maximum velocity
  motor2.run(BACKWARD); //rotate the motor anti-clockwise
  motor3.setSpeed(Speeed); //Define maximum velocity
  motor3.run(FORWARD);  //rotate the motor clockwise
  motor4.setSpeed(Speeed); //Define maximum velocity
  motor4.run(FORWARD);  //rotate the motor clockwise
}

void right()
{
  motor1.setSpeed(Speeed); //Define maximum velocity
  motor1.run(FORWARD); //rotate the motor clockwise
  motor2.setSpeed(Speeed); //Define maximum velocity
  motor2.run(FORWARD); //rotate the motor clockwise
  motor3.setSpeed(Speeed); //Define maximum velocity
  motor3.run(BACKWARD); //rotate the motor anti-clockwise
  motor4.setSpeed(Speeed); //Define maximum velocity
  motor4.run(BACKWARD); //rotate the motor anti-clockwise
}
  

void Stop()
{
  motor1.setSpeed(0); //Define minimum velocity
  motor1.run(RELEASE); //stop the motor when release the button
  motor2.setSpeed(0); //Define minimum velocity
  motor2.run(RELEASE); //rotate the motor clockwise
  motor3.setSpeed(0); //Define minimum velocity
  motor3.run(RELEASE); //stop the motor when release the button
  motor4.setSpeed(0); //Define minimum velocity
  motor4.run(RELEASE); //stop the motor when release the button
}
   
      
      
}
