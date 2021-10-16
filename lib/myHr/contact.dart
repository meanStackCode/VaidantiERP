import 'package:flutter/material.dart';
import 'package:test_app_flutter/models/dashboardModel/profile_model.dart';

class ContactHR extends StatefulWidget {
  ContactHR({Key key, this.contact}) : super(key: key);
  final Contact contact;

  @override
  State<ContactHR> createState() => ContactHRState();
}

class ContactHRState extends State<ContactHR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Contact',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w300,
            )),
        centerTitle: true,
      ),
      body: SafeArea(
          left: true,
          top: true,
          right: true,
          bottom: true,
          minimum: const EdgeInsets.only(
              top: 30.0, left: 16.0, right: 16.0, bottom: 0.0),
          child: ListView(
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Email',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 16.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(widget.contact.personalemail ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14.0,
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.w300,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Phone',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 16.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(widget.contact.phone ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14.0,
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.w300,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Mobile',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 16.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(widget.contact.mobile ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14.0,
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.w300,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Skype',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 16.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(widget.contact.skype ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14.0,
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.w300,
                              )),
                        ),
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}
