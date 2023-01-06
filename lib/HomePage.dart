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
                        .map((e) => raj(img[e.key], price[e.key], name[e.key]))
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

  Widget raj(dynamic img, dynamic price, dynamic name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detail(img, name, price),
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
