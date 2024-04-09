import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:takatuf/AUTH_PAGES/code_ver.dart';
import 'package:takatuf/AUTH_PAGES/signin.dart';
import 'package:takatuf/AUTH_PAGES/signup.dart';
import 'package:takatuf/onboardingscreen/onboardingscreen.dart';
import 'package:takatuf/screens/home.dart';
import 'package:takatuf/screens/profile.dart';
import 'package:takatuf/screens/settings.dart';
import 'package:takatuf/screens/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar"),
      ],
      locale: Locale("ar"),
      home: Signup(),
      routes: {
        "signup": (context) => Signup(),
        "signin": (context) => Signin(),
        "tab": (context) => CustomBottomTabBar(),
      },
    );
  }
}
