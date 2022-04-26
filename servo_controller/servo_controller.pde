import processing.serial.*;

import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

import cc.arduino.*;
import org.firmata.*;


ControlDevice cont; 
ControlIO control;

Arduino arduino;

float thumb;

void setup(){
  size(360,200);
  
  control = ControlIO.getInstance(this);
  cont = control.getMatchedDevice("xbox_servo");
  
  if (cont == null){
   println("this b null");
   System.exit(-1);
  }
  
  //println(Arduino.list());
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  arduino.pinMode(3, Arduino.SERVO);
  arduino.pinMode(5, Arduino.SERVO);
  
}

public void getUserInput(){
 //assign float value 
 //access controller
 
 thumb= map(cont.getSlider("servo_pos").getValue(), -1, 1, 0, 180);
 //println(thumb);
  
  
}

void draw(){
 
  getUserInput();
  background(thumb,100,255);
  if ((int(thumb) < 100 && int(thumb) > 80)){//deadzone
    arduino.servoWrite(5, 86);//don't move;
  }
  else{
    arduino.servoWrite(5, int(thumb));
  }
  
   int sensorValue = arduino.analogRead(2);
   println(sensorValue);
   if (sensorValue > 450){
     arduino.servoWrite(3, 180);
     arduino.digitalWrite(8,0);
   }
   else{
      arduino.servoWrite(3, 0); 
      arduino.digitalWrite(8,1);
      
      //for (int m = millis(); m < m+250; m++){
       //arduino.digitalWrite(7,1);
      //}
      //arduino.digitalWrite(7,0);
   }
  
  //arduino.digitalWrite(7,1);
  
}
