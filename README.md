# **About**
The goal of this project was to create an interactive device which incorporates sensor data. This project is a video game where the user plays as a penguin and tries to eat as many fish before being eaten by a shark. The penguin is controlled via use of a joystick. A potentiometer controls the frequency of the sharks and the button allows the user to restart after the penguin is eaten. The ESP32 is used for collection of sensor data and serial communication.

To learn more, take a look at my blog post: https://diamond-bovid-ab4.notion.site/Module-2-Interactive-Devices-11af9793688a8090a1f1d78dcfac3082?pvs=4

# **Materials**
- ESP32 TTGO T-display
- [Joystick](https://www.aliexpress.us/item/3256806002431759.html?spm=a2g0o.productlist.main.9.27cc669cp7PAyl&algo_pvid=5b7c1c10-8ecc-4a5a-93ae-169c947d8ba0&algo_exp_id=5b7c1c10-8ecc-4a5a-93ae-169c947d8ba0-4&pdp_npi=4%40dis%21USD%211.08%210.99%21%21%211.08%210.99%21%40210321dc17219345348044203eb837%2112000036194260765%21sea%21US%210%21ABX&curPageLogUid=DToZBiVTSLtx&utparam-url=scene%3Asearch%7Cquery_from%3A)
- [Button](https://www.aliexpress.us/item/3256806107122384.html?spm=a2g0o.order_list.order_list_main.47.21ef1802q6HtRj&gatewayAdapt=glo2usa#nav-specification)
- [Potentiometer](https://www.digikey.com/en/products/detail/sparkfun-electronics/COM-09806/7319606?s=N4IgTCBcDaIMIHkCyBaADATgBxoGwgF0BfIA)
- Breadboard
- M-M Header Pins
- Wires
- Heatshrink
- [M3 Heatset Inserts](https://www.adafruit.com/product/4255)
- M3 Phillips Pan Screws
- 3/4 Inch Felt Furniture Pads
- Hot Glue
- Tape
- Solder
- 1/8 Inch Wood
- 3D Printer Filament 

# **Instructions**
## Breadboarding
<img width="978"  src="https://github.com/user-attachments/assets/4fff7989-0ed2-4872-b0d3-4f44b46cdd2e">

1. Follow the Fritzing diagram above when wiring the components. 

2. Before attaching the joystick, button, and potentiometer to the breadboard, you should solder extension wires and M-M header pins to the components. Add heatshrink over these new connections to strengthen them. This is so that the components can easily be attached to the penguin enclosure. I would also recommend adding tape every about half inch so that the extended wires do not get tangled. 
<img width="500"  src= "https://github.com/user-attachments/assets/784b5d67-d500-488a-9bd9-5c3ea9a5796d">

## Code 
![PenguinGame-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/5cdbf852-0f9f-4d90-9211-7ad932ac6242)

1. Download the penguin.ino file from the Arduino-Code folder. Upload this program onto your ESP32.
   
2. Download the files from the Processing-Game-Code folder. Note you may have to change line 34 in Main_Game.pde so that it reflects the correct port name for your ESP32. Run the game from Main_Game.pde.

## Enclosure
![IMG_6869-ezgif com-video-to-gif-converter-2](https://github.com/user-attachments/assets/68a963f4-1d59-47e0-806a-897705147117)

1. To create the enclosure, you will use both a laser cutter and 3D printer. Begin by downloading the 3 files from the Enclosure-Files folder.

2. To laser cut the penguin body, use a piece of 1/8 inch wood and the Penguin Laser Cut.svg file.
   
3. To create the joystick enclosure, 3D print the Joystick-enclosure-bottom.stl and Joystick-enclosure-top.stl files. This should take about 2.5 hours.
   
4. Install the heatset inserts into the bottom of the joystick enclosure. Screw the joystick into the bottom of the enclosure. Then screw the top of the enclosure to the bottom.

5. Now is time to bring the penguin to life. Place the potentiometer into the square hole and the button into the circular hole. Make sure to have the wires coming out of the back side. I used hot glue to secure the potentiometer in place and tape for the button. Add to the back side of the penguin body felt pads so that the enclosure is level. I used two 3/4 inch felt pads on top of each other to get the desired height. Lastly, hot glue the bottom of the joystick enclosure to the stomach of the penguin. 

<img width="500"  src= "https://github.com/user-attachments/assets/5b382172-6253-493f-bdd4-d96299fb73a7">

