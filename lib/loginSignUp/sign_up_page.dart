import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            children: [
              SizedBox(height: 50),
              // Container(
              //   alignment: Alignment.center,
              //   child: Text(
              //     'Caretaker NGO',
              //     style: TextStyle(
              //         color: Colors.blue.shade600,
              //         fontWeight: FontWeight.w700,
              //         fontFamily: 'Ubuntu',
              //         fontSize: 30),
              //   )
              // ),
              // SizedBox(
              // height: 20),
              Container(
                  child: Image.asset('asset/images/care_taker.png',
                      height: 90, width: 90, color: Colors.blue.shade600)),
              SizedBox(height: 20),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w700),
                  )),
              SizedBox(height: 40),
              Container(
                child: TextField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Colors.blue.shade600, width: 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.person_rounded,
                      color: Colors.blue.shade600,
                    ),
                    hintText: "First Name",
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Colors.blue.shade600, width: 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.person_rounded,
                      color: Colors.blue.shade600,
                    ),
                    hintText: "Last Name",
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Colors.blue.shade600, width: 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.mail_rounded,
                      color: Colors.blue.shade600,
                    ),
                    hintText: "Email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colors.blue.shade600, width: 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue.shade600,
                      ),
                      hintText: "Password",
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 120.0,
                child: RoundedLoadingButton(
                  width: 150.0,
                  height: 45.0,
                  animateOnTap: true,
                  borderRadius: 10.0,
                  color: Colors.blue.shade600,
                  child: Text('Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  controller: _btnController,
                  onPressed: sampleFunction,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                // child: Text(
                //   'Already have account? <u>Sign In</u>',
                //   style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.blue.shade600,
                //       fontFamily: 'Ubuntu',
                //       fontWeight: FontWeight.w500),
                // )

                child: Text.rich(TextSpan(
                  text: 'Already have account? ',
                  style: TextStyle(fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                            color: Colors.lightBlue.shade400,
                            fontSize: 16,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
                          })
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  sampleFunction() {
    print('Function on Click Event Called.');
  }
}
