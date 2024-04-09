import 'package:flutter/material.dart';
import 'package:takatuf/components/rec_button.dart';

class intro_page1 extends StatefulWidget {
  const intro_page1({super.key});

  @override
  State<intro_page1> createState() => _intro_page1State();
}

class _intro_page1State extends State<intro_page1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          Container(
            // child: Text("soso"),
            child: Image(image: AssetImage("assets/images/1.jpg")),
          ),
          Text("قيم انسانية",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey)),
          Container(
            width: 375,
            alignment: Alignment.center,
            child: Text(
                "مرحبا بك في تطبيق تكاتف حيث نسعى حميعا الى تعزيز القيم الانسانية وبناء مجتمع متؤابط في عالمنا المتسارع ونؤمن باهمية التلاحم والتعاون",
                style: TextStyle(fontSize: 20, color: Colors.grey)),
          ),
          SizedBox(
            height: 100,
          ),
          RecButton(
              label: Text(
                "البدء",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              width: 250,
              height: 50,
              color: Colors.blueGrey)
        ],
      )),
    );
  }
}
