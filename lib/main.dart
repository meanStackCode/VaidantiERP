import 'package:flutter/material.dart';  
import 'package:test_app_flutter/loginSignUp/splash_screen.dart';

import 'utils/prefs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPageScreen());
  }
}

class SplashPageScreen extends StatefulWidget {  
  @override  
  SplashPage createState() => SplashPage();  
}  
