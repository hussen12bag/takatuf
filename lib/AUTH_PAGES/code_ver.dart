import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:takatuf/theme/fonts.dart';

class Code_num extends StatefulWidget {
  const Code_num({super.key});

  @override
  State<Code_num> createState() => _Code_numState();
}

class _Code_numState extends State<Code_num> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset("assets/images/logo1.jpg"),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 300),
              child: Text(
                "الخطوة 2 من 3",
                style: AppFonts.grey_14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 1),
                child: Text(
                  "التوثيق",
                  style: AppFonts.DarkBLue_20,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 1),
                child: Text(
                  "ادخل الرقم المرسل هنا",
                  style: AppFonts.grey_14,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Pinput(
              length: 4,
              showCursor: true,
              autofocus: true,
              defaultPinTheme: PinTheme(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey,
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " لم يصلك الرمز ؟",
                  style: AppFonts.light_grey_12,
                ),
                Text("اعادة الارسال", style: AppFonts.grey_14),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
