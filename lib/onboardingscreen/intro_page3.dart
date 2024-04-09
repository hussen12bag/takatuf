import 'package:flutter/material.dart';
import 'package:takatuf/components/rec_button.dart';

class intro_page3 extends StatefulWidget {
  const intro_page3({super.key});

  @override
  State<intro_page3> createState() => _intro_page3State();
}

class _intro_page3State extends State<intro_page3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          Container(
            // child: Text("soso"),
            child: Image(image: AssetImage("assets/images/3.jpg")),
          ),
          Text(
            "خيرك يحيي غيرك ",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          Container(
            width: 375,
            alignment: Alignment.center,
            child: Text(
                "ويبقى السؤال لماذا نتخلص من شيء له قيمة عند شخص اخر يوفر التطيسق حلولا اقتصادية وبيئية للاستفادة من ثروات مهدرة تخدم وطننا الغالي",
                style: TextStyle(fontSize: 20, color: Colors.grey)),
          ),
          SizedBox(
            height: 180,
          ),
          Container(
            alignment: Alignment(0, 0.50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                RecButton(
                    label: Text(
                      "التالي",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    width: 120,
                    height: 50,
                    color: Colors.blueGrey),
                SizedBox(
                  width: 100,
                ),
                RecButton(
                    fun: () {
                      Navigator.of(context).pushNamed("signup");
                    },
                    label: Text(
                      "تخطي",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                    width: 120,
                    height: 50,
                    color: Colors.white),
              ],
            ),
          )
        ],
      )),
    );
  }
}
