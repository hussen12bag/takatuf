import 'dart:math';

import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:takatuf/components/rec_button.dart';
import 'package:takatuf/components/social.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController phonecontroller = TextEditingController();
  Country selectedcountry = Country(
      phoneCode: "963",
      countryCode: "syria",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "saudi",
      example: "saudi",
      displayName: "saudi",
      displayNameNoCountryCode: "sa",
      e164Key: "");
  @override
  Widget build(BuildContext context) {
    phonecontroller.selection = TextSelection.fromPosition(
        TextPosition(offset: phonecontroller.text.length));
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "تسجيل جديد",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: EdgeInsets.only(left: 200),
                  child: Container(
                      width: 90,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "الخطوة 1 من 3",
                        style: TextStyle(color: Colors.grey),
                      )),
                ),
              ),
              SizedBox(
                height: 40,
                child: Padding(
                    padding: EdgeInsets.only(left: 200),
                    child: Text(
                      "أدخل رقم جوالك",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.blueGrey,
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    phonecontroller.text = value;
                  });
                },
                keyboardType: TextInputType.number,
                controller: phonecontroller,
                decoration: InputDecoration(
                  alignLabelWithHint: EditableText.debugDeterministicCursor,
                  hintText: " رقم الجوال",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  suffixIcon: Container(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme:
                                CountryListThemeData(bottomSheetHeight: 500),
                            onSelect: (value) {
                              setState(() {
                                selectedcountry = value;
                              });
                            });
                      },
                      child: Text(
                        "${selectedcountry.flagEmoji}+ ${selectedcountry.phoneCode}",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  // suffixIcon: phonecontroller.text.length > 9
                  //     ? Container(
                  //         height: 30,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           color: Colors.green,
                  //         ),
                  //         child: Icon(
                  //           Icons.done,
                  //           color: Colors.white,
                  //           size: 20,
                  //         ),
                  //       )
                  //     : null
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 250,
                  ),
                  child: Text(
                    "سيصلك رمز تحقق",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                height: 40,
              ),
              RecButton(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 75),
                        child: Text(
                          "تحقق",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  width: 250,
                  height: 50,
                  color: Colors.blueGrey),
              SizedBox(
                height: 100,
              ),
              Text(
                "_______________________او_______________________",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              SocialLogin(),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "هل لديك حساب؟",
                    style: TextStyle(color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("signin");
                    },
                    child: Text(
                      " تسجيل الدخول",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
