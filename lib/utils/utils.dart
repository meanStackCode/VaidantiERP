import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Flushbar displayFlushBar(BuildContext context, String title, String message) {
  return Flushbar(
    borderRadius: 8,
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    padding: EdgeInsets.all(10),
    duration: Duration(seconds: 3),
    backgroundGradient: LinearGradient(
        colors: [Colors.lightBlueAccent.shade400, Colors.blue.shade100]),
        boxShadows: [BoxShadow(color: Colors.black45, offset: Offset(3,3),blurRadius: 3)],
        dismissDirection: FlushbarDismissDirection.HORIZONTAL,
        forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
        message: message,
  )..show(context);
}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

/// This is the stateless widget that the main application instantiates.  
class CircularProgressIndicatorApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return CircularProgressIndicator(  
      backgroundColor: Colors.blue,  
      strokeWidth: 10,);  
  }  
}  