import 'package:flutter/material.dart';
import 'package:test_app_flutter/models/dashboardModel/profile_model.dart';

class WorkProfileHR extends StatefulWidget {
  const WorkProfileHR({Key key, this.workProfile}) : super(key: key);
  final WorkProfile workProfile;

  @override
  State<WorkProfileHR> createState() => WorkProfileHRState();
}

class WorkProfileHRState extends State<WorkProfileHR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Work Profile',
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
                      child: Text('EMP ID',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 40.0,
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
                        child: Text(widget.workProfile.employeeId ?? '',
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
                      child: Text('Official Email',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 40.0,
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
                        child: Text(widget.workProfile.officialEmail ?? '',
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
                      child: Text('Joining Date',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 40.0,
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
                        child: Text(widget.workProfile.joiningDate ?? '',
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
                      child: Text('Employment Stage',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 40.0,
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
                        child: Text(widget.workProfile.employmentStage ?? '',
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
                      child: Text('Employment Type',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 40.0,
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
                        child: Text(widget.workProfile.employmentType ?? '',
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
                      child: Text('Employment Grade',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 40.0,
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
                        child: Text(widget.workProfile.employmentGrade ?? '',
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
                      child: Text('Probation End Date',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 40.0,
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
                        child: Text(widget.workProfile.probationEndDate ?? '',
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
                      child: Text('Confirmation Date',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 40.0,
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
                        child: Text('',
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
                      child: Text('Notice Period Start Date',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 40.0,
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
                        child: Text(widget.workProfile.noticeStartDate ?? '',
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
                      child: Text('Notice Period End Date',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 40.0,
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
                        child: Text(widget.workProfile.noticeEndDate ?? '',
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
