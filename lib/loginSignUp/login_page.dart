import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:test_app_flutter/home/main_page.dart';
import 'package:test_app_flutter/models/loginRequestModel/login_model.dart';
import 'package:test_app_flutter/utils/constants.dart';
import 'package:test_app_flutter/utils/prefs.dart';
import 'package:test_app_flutter/utils/utils.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  bool validateUsername = false;
  bool validatePassword = false;
  bool _isChecked = false;

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    loadUserEmailPassword();
  }

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
        fontSize: 16, fontFamily: 'Ubuntu', fontWeight: FontWeight.w700);

    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                body: Center(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(
                      'asset/images/empact_logo.PNG',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Empact Consulting',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w700),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: TextField(
                      controller: userNameController,
                      decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(10),
                        //   borderSide: BorderSide(color: Colors.blue.shade600, width: 1),
                        // ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(
                          Icons.email_rounded,
                          // color: Colors.blue.shade600,
                        ),
                        errorText:
                            validateUsername ? 'This value is required.' : null,
                        hintText: "Username",
                      ),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      style: style,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          // enabledBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10),
                          //   borderSide:
                          //       BorderSide(color: Colors.blue.shade600, width: 1),
                          // ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            // color: Colors.blue.shade600,
                          ),
                          errorText: validatePassword
                              ? 'This value is required.'
                              : null,
                          hintText: "Password",
                        ),
                        keyboardType: TextInputType.text,
                        style: style,
                        textInputAction: TextInputAction.done),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 24.0,
                              width: 24.0,
                              child: Theme(
                                data: ThemeData(
                                    unselectedWidgetColor:
                                        Color(0xff00C8E8) // Your color
                                    ),
                                child: Checkbox(
                                    activeColor: Color(0xff00C8E8),
                                    value: _isChecked,
                                    onChanged: handleRemeberme),
                              )),
                          SizedBox(width: 5.0),
                          Text("Remember Me",
                              style: TextStyle(
                                  color: Color(0xff646464),
                                  fontSize: 12,
                                  fontFamily: 'Ubuntu'))
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 120.0,
                    child: RoundedLoadingButton(
                      width: 150.0,
                      height: 45.0,
                      animateOnTap: false,
                      borderRadius: 10.0,
                      //color: Colors.blue.shade600,
                      child: Text('Sign In',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      controller: _btnController,
                      onPressed: loginButtonClickFunction,
                    ),
                  ),
                ],
              ),
            ))));
  }

  /// Method called to handle the Login API with fields validation
  void loginButtonClickFunction() async {
    FocusManager.instance.primaryFocus?.unfocus();
    setState(() {
      userNameController.text.isEmpty
          ? validateUsername = true
          : validateUsername = false;
      passwordController.text.isEmpty
          ? validatePassword = true
          : validatePassword = false;
    });
    if (userNameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      _btnController.start();
      var formData = FormData.fromMap({
        'user_name': userNameController.text,
        'password': passwordController.text,
      });
      var response = await Dio().post(
          'https://vaidanti.com/EmpactERP/Api/Admin/login',
          data: formData);
      print('Response ' '$response');
      if (response.statusCode == 200) {
        try {
          var model = LoginResponseModel.fromJson(response.data);
          switch (model.status) {
            case '200':
              _btnController.reset();
              Prefs.setBool(PREF_IS_LOGIN, true);
              Prefs.setString(PREF_AUTH_TOKEN, model.data.token);
              Prefs.setString(PREF_USER_IMAGE, model.data.userImage);
              Prefs.setString(PREF_EMPLOYEE_ID, model.data.employeeID);
              Prefs.setString(PREF_USER_NAME, model.data.name);

              Navigator.pushAndRemoveUntil<dynamic>(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (BuildContext context) => MainPageScreen(),
                ),
                (route) =>
                    false, //if you want to disable back feature set to false
              );
              break;
            case '403':
              _btnController.error();
              Timer(Duration(seconds: 3), () {
                _btnController.reset();
              });
              displayFlushBar(context, APP_NAME, model.message);
              break;
          }
        } catch (e) {
          print('Exception --- ${e.toString()}');
          _btnController.error();
          displayFlushBar(context, APP_NAME, e.toString());
          Timer(Duration(seconds: 3), () {
            _btnController.reset();
          });
        }
      } else {
        _btnController.error();
        displayFlushBar(context, APP_NAME,
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
        Timer(Duration(seconds: 5), () {
          _btnController.reset();
        });
      }
    }
  }

  /// method called to handle the remember me logic.
  void handleRemeberme(bool value) {
    _isChecked = value;
    Prefs.setBool(PREF_IS_REMEMBER, _isChecked);
    Prefs.setString(PREF_IS_USER_NAME_REMEMBER, userNameController.text);
    Prefs.setString(PREF_IS_PASSWORD_REMEMBER, passwordController.text);

    setState(() {
      _isChecked = value;
    });
  }

  /// method called to load the email and password from the shared preference.
  void loadUserEmailPassword() async {
    try {
      var _username = Prefs.getString(PREF_IS_USER_NAME_REMEMBER);
      var _password = Prefs.getString(PREF_IS_PASSWORD_REMEMBER);
      var _remeberMe = Prefs.getBool(PREF_IS_REMEMBER);

      print(_remeberMe);
      print(_username);
      print(_password);
      if (_remeberMe) {
        setState(() {
          _isChecked = true;
          userNameController.text = _username ?? "";
          passwordController.text = _password ?? "";
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
