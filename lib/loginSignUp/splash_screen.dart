import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_app_flutter/home/main_page.dart';
import 'package:test_app_flutter/utils/constants.dart';
import 'package:test_app_flutter/utils/prefs.dart';
import 'login_page.dart';
import '../main.dart';

class SplashPage extends State<SplashPageScreen> {
  @override
  void initState() {
    super.initState();
    if (Prefs.getBool(PREF_IS_LOGIN) == true) {
      Timer(
          Duration(seconds: 2),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => MainPageScreen())));
    } else {
      Timer(
          Duration(seconds: 2),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('asset/images/empact_logo.PNG',
                  height: 400, width: 300),
            ],
          ),
        ),
      ),
    );
  }
}
