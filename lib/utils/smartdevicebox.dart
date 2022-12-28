import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDevices extends StatelessWidget {
  final String deviceName;
  final String deviceInfo;
  final String iconPath;
  final bool powerStatus;
  void Function (bool)? onChanged;

  SmartDevices(
      {Key? key,
      required this.deviceName,
      required this.deviceInfo,
      required this.iconPath,
      required this.powerStatus,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: powerStatus ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  iconPath,
                  height: 25,
                  color: powerStatus ? Colors.white: Colors.black,
                ),
              ],
            ),

            SizedBox(height: 3,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deviceName,
                  style: TextStyle(fontWeight: FontWeight.w900,color: powerStatus ? Colors.white : Colors.black),
                ),

              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  deviceInfo,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoSwitch(
                  value: powerStatus,
                  activeColor: powerStatus ? Colors.white24 : Colors.black,
                  onChanged: onChanged,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
