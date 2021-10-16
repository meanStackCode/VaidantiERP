import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_flutter/models/dashboardModel/profile_model.dart';

class AboutPageHR extends StatefulWidget {
  const AboutPageHR({Key key, this.about}) : super(key: key);
  final About about;

  @override
  State<AboutPageHR> createState() => AboutPageHRState();
}

class AboutPageHRState extends State<AboutPageHR> {
  final style = TextStyle(
      fontSize: 16, fontFamily: 'Ubuntu', fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    print('Profile Response Model' '${widget.about.fullname ?? 'null empty'}');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('ERP',
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
                      child: Text('Full Name',
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
                        child: Text(widget.about.fullname ?? '',
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
                      child: Text('Middle Name',
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
                        child: Text(widget.about.middleName ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Last Name',
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
                        child: Text(widget.about.lastName ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Nationality',
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
                        child: Text(widget.about.nationality ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Company Country',
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
                        child: Text(widget.about.country ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Company Name',
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
                        child: Text(widget.about.companyname ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Emp ID',
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
                        child: Text(widget.about.employeeId ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Username',
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
                        child: Text(widget.about.username ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Gender',
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
                        child: Text(widget.about.gender ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Personal Email',
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
                        child: Text(widget.about.personalEmail ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Marital Status',
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
                        child: Text(widget.about.maritalStatus ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Father\'s Name',
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
                        child: Text(widget.about.fatherName ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Mother\'s Name',
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
                        child: Text(widget.about.motherName ?? '',
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
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Religion',
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
                        child: Text(widget.about.religion ?? '',
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
                ),
              )
            ],
          )),
    );
  }
}
