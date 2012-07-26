## Readme
The Xcode project has been created using the latest Xcode version 4.4 and targeted for 
 Mountain Lion 10.8

* This leverages the work of RobotGrrl and uses the Matatino Framework 
  (https://github.com/RobotGrrl/Matatino) and the tutorials available at appsforarduino.com
  
* The example uses an Arduino (Pro 3.3 8Mhz) that is connected to the MAC using Matatino
Framework. This connection is made wireless using BlueSirf  Bluetooth module (SPP) profile.

* The simple apps makes a connection to this Arduino and then sends serial commands which
are then translated to trigger a relay to power a device.

* The sample PDE (arduino sketch is also provided).