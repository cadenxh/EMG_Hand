# EMG_Hand
Code and Circuit Diagram for an EMG and Xbox remote controlled hand
Final Paper
For my project, I made an EMG controlled hand that opens and closes with EMG signals and rotates via an Xbox remote. I used a PLA 3D printer to print the hand itself, which I downloaded from thingyverse.com. I attached the two servo motors and solenoid to the hand itself with hot glue. I used fishing line to connect the fingers to the solenoid and one of the servo motors. 
I used an Arduino Uno to control the hand. I compile the Standard Firmata i2c code to interface with all the devices. Then, I wrote my own custom code in Processing. In Processing, I imported libraries that allow processing to interface to an Xbox remote and the Arduino. By doing so, I wrote a short script to control the device. Both the Firmata code and the Processing code are included in this github repository. 
I separated the device onto two separate circuit boards: the driver for the servos and solenoid is on a breadboard attached in the housing of the hand with the Arduino, while the EMG circuit is still on a breadboard. The reason for this is that the EMG circuit will be replaced in a future design, whereas the drivers for the solenoid and servos will not. However, both still share a common ground. The circuit diagram can be seen in the repository. 
Here is a complete list of supplies used in the project:
•	2 9v batteries
•	1 12v Arduino compatible power supply
•	1 Arduino Uno
•	1 2222 Transistor
•	1 EMG circuit
•	3 Electrodes and electrode pads
•	1 Protoboard
•	1 Breadboard
•	2 Servo Motors
•	1 Solenoid
•	1 3D Printed Hand
•	1 3D Printed Base
•	1 Laptop
•	1 Xbox Controller 
•	1 USBC cable  
•	Assorted Jumper Cables

![circuit](https://user-images.githubusercontent.com/19892413/165401178-3d01472a-c85d-4345-a14f-fa6c316431f7.png)
