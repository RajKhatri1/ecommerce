import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  dynamic img;
  dynamic name;
  dynamic price;
  dynamic details;
  Detail(this.img,this.name,this.price,this.details);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Details"),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12),
                child: Image.asset("${widget.img}"),
              ),
              Container(
                height: 400,
                width: double.infinity,
                color: Colors.blue,
                child: Column(
                  children: [
                    Text("${widget.name}",style: TextStyle(color: Colors.black,fontSize: 20,letterSpacing: 2,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${widget.details}",style: TextStyle(letterSpacing: 2,fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
