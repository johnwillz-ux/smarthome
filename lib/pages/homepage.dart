import 'package:flutter/material.dart';
import 'package:smarthome/comp/homedevices.dart';
import 'package:smarthome/utils/mytabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //my Tab list

  List<Widget> myTabs = [
    const MyTab(inpuTex: 'Linving room'),
    const MyTab(inpuTex: 'Kitchen'),
    const MyTab(inpuTex: 'Bathroom'),
    const MyTab(inpuTex: 'Bedroom'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Image.asset(
              'lib/icons/user.png',
              height: 40,
            ),
          ),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 7.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0, //buttons Material shadow
                  padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 8.0,
                      right: 8.0,
                      left: 8.0), //specify the button's Padding
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          35.0)), // set the buttons shape. Make its birders rounded etc
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.cloudy_snowing,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Jan, 25th',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),

                //welcome text
                const Text(
                  'Good morning,',
                  style: TextStyle(fontSize: 53, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Johnwillz!',
                  style: TextStyle(fontSize: 53, fontWeight: FontWeight.w400),
                ),

                const SizedBox(
                  height: 30,
                ),

                // Temprature details
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Temperature / C',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700]),
                      ),
                      const Text(
                        '24',
                        style: (TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 6,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Energy / kWH',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700]),
                      ),
                      const Text(
                        '20',
                        style: (TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Humidity / %',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700]),
                      ),
                      const Text(
                        '19',
                        style: (TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                TabBar(
                  tabs: myTabs,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.zero,
                  unselectedLabelColor: Colors.grey[700],
                  labelColor: Colors.black,
                ),

                const Expanded(
                  child: TabBarView(children: [
                    HomeDevices(),
                    HomeDevices(),
                    HomeDevices(),
                    HomeDevices(),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
