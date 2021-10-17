import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProjectDetailScreenState();
}

class ProjectDetailScreenState extends State<ProjectDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Project Detail',
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
          child: Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: ListView(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Serial No',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Project Location',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Projects No',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Category',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Project Scope',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Type Of Project',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Client',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Timer Status',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Start Date',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('End Date',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Billing Type',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Estimate Hours',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Project Value',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Project Value-\$',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Project Manager',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Vendor',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Consultants',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Demo Url',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Budget',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Status',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    child: Text('Participants',
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
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('ABCd',
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
                    height: 20.0,
                  ),
                ],
              ))),
    );
  }
}
