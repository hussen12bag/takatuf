import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:takatuf/components/rec_button.dart';
import 'package:takatuf/components/social.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
              Container(
                width: 250,
                height: 250,
                child: Center(
                    child: Image(image: AssetImage("assets/images/logo1.jpg"))),
              ),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                      width: 150,
                      height: 100,
                      alignment: Alignment.centerRight,
                      child: Text(
                        " تسجيل الدخول  ",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
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
                  hintText: " ...رقم الجوال",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
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
                  //     : null,
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
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "_______________________او_______________________",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 50,
              ),
              SocialLogin(),
              SizedBox(
                height: 50,
              ),
              RecButton(
                  fun: () {
                  
                  },
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "دخول",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                  width: 250,
                  height: 50,
                  color: Colors.blueGrey),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
