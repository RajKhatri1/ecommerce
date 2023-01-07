import 'package:ecommerce/detailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List img = [
    "assets/images/phone.png",
    "assets/images/airpod.png",
    "assets/images/watch.png",
    "assets/images/mac.png",
  ];
  List price = [
    "\$150",
    "\$90",
    "\$80",
    "\$200",
  ];
  List name = [
    "Iphone",
    "AirPod",
    "Iwatch",
    "MACBook",
  ];
  List details = [
    "256GB,\nSuper Retina XDR display,\nHDR display,True Tone\nWide colour (P3),Haptic Touch,/nCeramic Shield front Glass back and aluminium design",
    "You can pair AirPods with your Apple devices to listen to music, movies, messages, and more. After you set up your AirPods with one Apple device (like your iPhone)",
    "The standard Apple Watch comes in two case sizes, 38mm or 42mm, with an OLED display with an ambient light sensor to combat glare. Apple offers a premium Apple Watch Edition",
  "Multitasking with iPad is more intuitive and powerful than ever. Work seamlessly across apps. Use Slide Over or Split View to work with multiple apps at the same time, and even drag and drop content between apps with touch or a trackpad.",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Shopping"),
          leading: Icon(Icons.menu),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.20),
                  child: Container(
                    height: 50,
                    width: 300,
                    color: Colors.blueAccent,
                    child: Row(
                      children: [
                        Icon(Icons.search, size: 30, color: Colors.white),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "search ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black12,
                  child: Icon(Icons.add),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    children: img
                        .asMap()
                        .entries
                        .map((e) => raj(img[e.key], price[e.key], name[e.key],details[e.key]))
                        .toList(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget raj(dynamic img, dynamic price, dynamic name,dynamic details) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detail(img, name, price, details),
              ));
        },
        child: Container(
          height: 380,
          width: 210,
          decoration: BoxDecoration(
            color: Colors.black12,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              children: [
                Image.asset(
                  "$img",
                  height: 250,
                  width: 250,
                ),
                Text("$price"),
                Text("$name"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
