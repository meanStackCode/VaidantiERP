import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpportunityDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OpportunityDetailScreenState();
}

class OpportunityDetailScreenState extends State<OpportunityDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Opportunity Detail',
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
                    child: Text('Client Name',
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
                    child: Text('Project Type',
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
                    child: Text('Opportunity Name',
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
                    child: Text('Stages',
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
                    child: Text('Probability Of Winning',
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
                    child: Text('Empact Lead Owner',
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
                    child: Text('Lead Origin Date',
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
                    child: Text('Lead Close Date',
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
                    child: Text('Lead Aging',
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
                    child: Text('Client Contact',
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
                    child: Text('Contract Status',
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
                    child: Text('Proposal Date',
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
                    child: Text('Proposal Developed By',
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
                    child: Text('Proposal Status',
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
                    child: Text('Tentative Project Start Date',
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
                    child: Text('Tentative Project End Date',
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
                    child: Text('Tentative Project Duration',
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
                    child: Text('Client Flexibility on Project',
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
                    child: Text('Empact Lead Owner',
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
                    child: Text('Add New Link',
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
                    child: Text('Next Action',
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
                    child: Text('Next Action Date',
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
