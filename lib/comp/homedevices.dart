import 'package:flutter/material.dart';
import 'package:smarthome/utils/smartdevicebox.dart';

class HomeDevices extends StatefulWidget {
  const HomeDevices({Key? key}) : super(key: key);

  @override
  State<HomeDevices> createState() => _HomeDevicesState();
}

class _HomeDevicesState extends State<HomeDevices> {
  List myDevices = [
    //[deviceName, DeviceInfo, icon patch, powerStatus]

    ['Temp. Control', 'MI Home Therm', 'lib/icons/temp.png', true],
    ['Light', 'Wyze Bulb, 3 Lights', 'lib/icons/bulb.png', false],
    ['Speaker', 'Google Nest Audio', 'lib/icons/speaker.png', true],
    ['Smart TV', 'Samsung QN900B', 'lib/icons/tv.png', false],
  ];

  //power switched

  void swithChanged (bool value, int index){
    setState(() {
      myDevices[index][3] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            itemCount: myDevices.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2/1.6,
            ),
            itemBuilder: (context, index) {
              return SmartDevices(
                deviceName: myDevices[index][0],
                iconPath: myDevices[index][2],
                deviceInfo: myDevices[index][1],
                powerStatus: myDevices[index][3],
                onChanged: (value) => swithChanged(value, index),
              );
            }));
  }
}
