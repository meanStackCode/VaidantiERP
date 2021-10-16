import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_app_flutter/loginSignUp/login_page.dart';
import 'package:test_app_flutter/models/dashboardModel/profile_model.dart';
import 'package:test_app_flutter/myHr/about.dart';
import 'package:test_app_flutter/myHr/address.dart';
import 'package:test_app_flutter/myHr/bank_detail.dart';
import 'package:test_app_flutter/myHr/contact.dart';
import 'package:test_app_flutter/myHr/document_detail.dart';
import 'package:test_app_flutter/myHr/family_details.dart';
import 'package:test_app_flutter/myHr/identity.dart';
import 'package:test_app_flutter/myHr/important_dates.dart';
import 'package:test_app_flutter/myHr/medical.dart';
import 'package:test_app_flutter/models/dashboardModel/profile_designation_model.dart';
import 'package:test_app_flutter/myHr/work_profile.dart';
import 'package:test_app_flutter/utils/constants.dart';
import 'package:test_app_flutter/utils/prefs.dart';
import 'package:test_app_flutter/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  bool loading = false, isDepartmentHead = false;
  ProfileModelResponse responseModel;
  ProfileDesignationModel profiledesignationModel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: loading
              ? CircularProgressIndicator(color: Colors.blue, strokeWidth: 4.0)
              : ProfileBodyWidget(loading, responseModel,
                  profiledesignationModel, isDepartmentHead),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loading = true;
    loadProfileData();
  }

  /// api method called to load the profile data
  Future<void> loadProfileData() async {
    var formData =
        FormData.fromMap({'auth_token': Prefs.getString(PREF_AUTH_TOKEN)});
    var response = await Dio()
        .post('https://vaidanti.com/EmpactERP/Api/Admin/my_hr', data: formData);
    print('Profile - $response');
    if (response.statusCode == 200) {
      var model = ProfileModelResponse.fromJson(response.data);
      if (model.status == '200') {
        setState(() {
          responseModel = model;
          //   loading = !loading;
        });
        loadProfileDesignationData();
      } else {
        displayFlushBar(context, APP_NAME, model.message);
        setState(() {
          loading = !loading;
        });
      }
    } else {
      displayFlushBar(context, APP_NAME,
          'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
      setState(() {
        loading = !loading;
      });
    }
  }

  /// api method called to load the profile designation data
  Future<void> loadProfileDesignationData() async {
    var formData =
        FormData.fromMap({'auth_token': Prefs.getString(PREF_AUTH_TOKEN)});
    var response = await Dio().post(
        'https://vaidanti.com/EmpactERP/Api/Admin/employee_details',
        data: formData);
    print('Profile - $response');
    if (response.statusCode == 200) {
      var model = ProfileDesignationModel.fromJson(response.data);
      if (model.status == '200') {
        setState(() {
          profiledesignationModel = model;
          loading = !loading;
          if (model.data.deparmentHead != null)
            isDepartmentHead = true;
          else
            isDepartmentHead = false;
        });
      } else {
        //displayFlushBar(context, APP_NAME, model.message);
        setState(() {
          loading = !loading;
        });
      }
    } else {
      //displayFlushBar(context, APP_NAME,'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
      setState(() {
        loading = !loading;
      });
    }
  }
}

class ProfileBodyWidget extends StatelessWidget {
  ProfileBodyWidget(this.loading, this.resModel, this.designationModel,
      this.isDepartmentHead);
  final bool loading, isDepartmentHead;
  final ProfileModelResponse resModel;
  final ProfileDesignationModel designationModel;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: SafeArea(
          child: Container(
            child: ListView(
              children: [
                Container(
                  color: "#1A334D".toColor(),
                  child: Stack(
                    children: [
                      Align(
                        child: Container(
                          padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 30.0),
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xff7c94b6),
                                  image: DecorationImage(
                                    image: NetworkImage(Prefs.getString(
                                            PREF_USER_IMAGE) ??
                                        'https://vaidanti.com/EmpactERP/uploads/hisham.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: '#ffffff'.toColor(),
                                    width: 4.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(Prefs.getString(PREF_USER_NAME) ?? '',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w500,
                                  )),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                  'EMP ID: '
                                  '${Prefs.getString(PREF_EMPLOYEE_ID) ?? ''}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w300,
                                  )),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      designationModel?.data?.designation ??
                                          'Undefined Department & Designation',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w300,
                                      )),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Visibility(
                                      visible: isDepartmentHead,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4.0, vertical: 2.0),
                                          color: '#ff902b'.toColor(),
                                          child: Text(
                                              designationModel
                                                      ?.data?.deparmentHead ??
                                                  '',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontFamily: 'Ubuntu',
                                                fontWeight: FontWeight.w300,
                                              ))))
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: designationModel
                                          ?.data?.subDesignation?.length ??
                                      0,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                      '${index + 1} => '
                                                      '${designationModel?.data?.subDesignation[index]?.name ?? ''}',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0,
                                                        fontFamily: 'Ubuntu',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              showAlert(context);
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 14.0, right: 14.0),
                              child: Icon(
                                Icons.power_settings_new_rounded,
                                color: Colors.white,
                                size: 40.0,
                                // color: Colors.blue.shade600,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                //   color: '#1e1e2d'.toColor(),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       Container(
                //         child: Column(
                //           children: [
                //             Text('Projects \nHours',
                //                 textAlign: TextAlign.center,
                //                 style: TextStyle(
                //                   color: Colors.white,
                //                   fontSize: 12.0,
                //                   fontFamily: 'Ubuntu',
                //                   fontWeight: FontWeight.w300,
                //                 )),
                //             SizedBox(
                //               height: 10.0,
                //             ),
                //             Text('0:0:19',
                //                 style: TextStyle(
                //                   color: Colors.white,
                //                   fontFamily: 'Ubuntu',
                //                   fontSize: 16.0,
                //                   fontWeight: FontWeight.w500,
                //                 ))
                //           ],
                //         ),
                //       ),
                //       Container(
                //         child: Column(
                //           children: [
                //             Text('Tasks \nHours',
                //                 textAlign: TextAlign.center,
                //                 style: TextStyle(
                //                   color: Colors.white,
                //                   fontSize: 12.0,
                //                   fontFamily: 'Ubuntu',
                //                   fontWeight: FontWeight.w300,
                //                 )),
                //             SizedBox(
                //               height: 10.0,
                //             ),
                //             Text('0:0:19',
                //                 style: TextStyle(
                //                   color: Colors.white,
                //                   fontFamily: 'Ubuntu',
                //                   fontSize: 16.0,
                //                   fontWeight: FontWeight.w500,
                //                 ))
                //           ],
                //         ),
                //       ),
                //       Container(
                //         child: Column(
                //           children: [
                //             Text('This Month \nworking Hours',
                //                 textAlign: TextAlign.center,
                //                 style: TextStyle(
                //                   color: Colors.white,
                //                   fontSize: 12.0,
                //                   fontFamily: 'Ubuntu',
                //                   fontWeight: FontWeight.w300,
                //                 )),
                //             SizedBox(
                //               height: 10.0,
                //             ),
                //             Text('0:0 m',
                //                 style: TextStyle(
                //                   color: Colors.white,
                //                   fontFamily: 'Ubuntu',
                //                   fontSize: 16.0,
                //                   fontWeight: FontWeight.w500,
                //                 ))
                //           ],
                //         ),
                //       ),
                //       Container(
                //         child: Column(
                //           children: [
                //             Text('Working \nHours',
                //                 textAlign: TextAlign.center,
                //                 style: TextStyle(
                //                   color: Colors.white,
                //                   fontSize: 12.0,
                //                   fontFamily: 'Ubuntu',
                //                   fontWeight: FontWeight.w300,
                //                 )),
                //             SizedBox(
                //               height: 10.0,
                //             ),
                //             Text('0:0 m',
                //                 style: TextStyle(
                //                   color: Colors.white,
                //                   fontFamily: 'Ubuntu',
                //                   fontSize: 16.0,
                //                   fontWeight: FontWeight.w500,
                //                 ))
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Card(
                //     elevation: 4.0,
                //     shadowColor: Colors.blueGrey,
                //     child: Container(
                //       padding:
                //           EdgeInsets.symmetric(horizontal: 5.0, vertical: 16),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         children: [
                //           Container(
                //             child: Column(
                //               children: [
                //                 Text('Open \nProjects',
                //                     textAlign: TextAlign.center,
                //                     style: TextStyle(
                //                       color: Colors.black54,
                //                       fontSize: 12.0,
                //                       fontFamily: 'Ubuntu',
                //                       fontWeight: FontWeight.w300,
                //                     )),
                //                 SizedBox(
                //                   height: 10.0,
                //                 ),
                //                 Text('0',
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontFamily: 'Ubuntu',
                //                       fontSize: 14.0,
                //                       fontWeight: FontWeight.w500,
                //                     ))
                //               ],
                //             ),
                //           ),
                //           Container(
                //               height: 40,
                //               child: VerticalDivider(color: Colors.blue)),
                //           Container(
                //             child: Column(
                //               children: [
                //                 Text('Open \nTasks',
                //                     textAlign: TextAlign.center,
                //                     style: TextStyle(
                //                       color: Colors.black54,
                //                       fontSize: 12.0,
                //                       fontFamily: 'Ubuntu',
                //                       fontWeight: FontWeight.w300,
                //                     )),
                //                 SizedBox(
                //                   height: 10.0,
                //                 ),
                //                 Text('0',
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontFamily: 'Ubuntu',
                //                       fontSize: 14.0,
                //                       fontWeight: FontWeight.w500,
                //                     ))
                //               ],
                //             ),
                //           ),
                //           Container(
                //               height: 40,
                //               child: VerticalDivider(color: Colors.blue)),
                //           Container(
                //             child: Column(
                //               children: [
                //                 Text('Completed \nProjects',
                //                     textAlign: TextAlign.center,
                //                     style: TextStyle(
                //                       color: Colors.black54,
                //                       fontSize: 12.0,
                //                       fontFamily: 'Ubuntu',
                //                       fontWeight: FontWeight.w300,
                //                     )),
                //                 SizedBox(
                //                   height: 10.0,
                //                 ),
                //                 Text('0',
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontFamily: 'Ubuntu',
                //                       fontSize: 14.0,
                //                       fontWeight: FontWeight.w500,
                //                     ))
                //               ],
                //             ),
                //           ),
                //           Container(
                //               height: 40,
                //               child: VerticalDivider(color: Colors.blue)),
                //           Container(
                //             child: Column(
                //               children: [
                //                 Text('Completed \nTasks',
                //                     textAlign: TextAlign.center,
                //                     style: TextStyle(
                //                       color: Colors.black54,
                //                       fontSize: 12.0,
                //                       fontFamily: 'Ubuntu',
                //                       fontWeight: FontWeight.w300,
                //                     )),
                //                 SizedBox(
                //                   height: 10.0,
                //                 ),
                //                 Text('0',
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontFamily: 'Ubuntu',
                //                       fontSize: 14.0,
                //                       fontWeight: FontWeight.w500,
                //                     ))
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //     )),
                // Container(
                //   margin: EdgeInsets.only(left: 14.0, top: 20.0),
                //   child: Text('Attendace Records',
                //       style: TextStyle(
                //         color: Colors.black,
                //         fontFamily: 'Ubuntu',
                //         fontSize: 14.0,
                //         fontWeight: FontWeight.w500,
                //       )),
                // ),
                // Card(
                //     elevation: 4.0,
                //     shadowColor: Colors.blueGrey,
                //     child: Container(
                //       padding:
                //           EdgeInsets.symmetric(horizontal: 5.0, vertical: 16),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         children: [
                //           Container(
                //             child: Column(
                //               children: [
                //                 Text('Monthly \nAttendance',
                //                     textAlign: TextAlign.center,
                //                     style: TextStyle(
                //                       color: Colors.black54,
                //                       fontSize: 12.0,
                //                       fontFamily: 'Ubuntu',
                //                       fontWeight: FontWeight.w300,
                //                     )),
                //                 SizedBox(
                //                   height: 10.0,
                //                 ),
                //                 Text('0/22',
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontFamily: 'Ubuntu',
                //                       fontSize: 16.0,
                //                       fontWeight: FontWeight.w500,
                //                     ))
                //               ],
                //             ),
                //           ),
                //           Container(
                //               height: 40,
                //               child: VerticalDivider(color: Colors.blue)),
                //           Container(
                //             child: Column(
                //               children: [
                //                 Text('Monthly \nAbsent',
                //                     textAlign: TextAlign.center,
                //                     style: TextStyle(
                //                       color: Colors.black54,
                //                       fontSize: 12.0,
                //                       fontFamily: 'Ubuntu',
                //                       fontWeight: FontWeight.w300,
                //                     )),
                //                 SizedBox(
                //                   height: 10.0,
                //                 ),
                //                 Text('0',
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontFamily: 'Ubuntu',
                //                       fontSize: 16.0,
                //                       fontWeight: FontWeight.w500,
                //                     ))
                //               ],
                //             ),
                //           ),
                //           Container(
                //               height: 40,
                //               child: VerticalDivider(color: Colors.blue)),
                //           Container(
                //             child: Column(
                //               children: [
                //                 Text('Total \nAward',
                //                     textAlign: TextAlign.center,
                //                     style: TextStyle(
                //                       color: Colors.black54,
                //                       fontSize: 12.0,
                //                       fontFamily: 'Ubuntu',
                //                       fontWeight: FontWeight.w300,
                //                     )),
                //                 SizedBox(
                //                   height: 10.0,
                //                 ),
                //                 Text('0',
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontFamily: 'Ubuntu',
                //                       fontSize: 16.0,
                //                       fontWeight: FontWeight.w500,
                //                     ))
                //               ],
                //             ),
                //           ),
                //           Container(
                //               height: 40,
                //               child: VerticalDivider(color: Colors.blue)),
                //           Container(
                //             child: Column(
                //               children: [
                //                 Text('Monthly \nLeave',
                //                     textAlign: TextAlign.center,
                //                     style: TextStyle(
                //                       color: Colors.black54,
                //                       fontSize: 12.0,
                //                       fontFamily: 'Ubuntu',
                //                       fontWeight: FontWeight.w300,
                //                     )),
                //                 SizedBox(
                //                   height: 10.0,
                //                 ),
                //                 Text('0',
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontFamily: 'Ubuntu',
                //                       fontSize: 16.0,
                //                       fontWeight: FontWeight.w500,
                //                     ))
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //     )),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutPageHR(
                                  about: resModel.data.about,
                                )),
                      );
                    },
                    child: Card(
                      elevation: 4.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('About',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue.shade300,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WorkProfileHR(
                                workProfile: resModel.data.workProfile)),
                      );
                    },
                    child: Card(
                      elevation: 4.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Work Profile',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue.shade300,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AddressHR(address: resModel.data.address)),
                      );
                    },
                    child: Card(
                      elevation: 4.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Address',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue.shade300,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) =>
                //               AddressHR(address: resModel.data.address)),
                //     );
                //   },
                //   child: Card(
                //     elevation: 4.0,
                //     shadowColor: Colors.blueGrey,
                //     child: Container(
                //         padding: EdgeInsets.only(
                //             left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                //         child: Column(
                //           children: [
                //             Align(
                //               alignment: Alignment.topLeft,
                //               child: Text('Address',
                //                   style: TextStyle(
                //                     color: Colors.black,
                //                     fontFamily: 'Ubuntu',
                //                     fontSize: 14.0,
                //                     fontWeight: FontWeight.w500,
                //                   )),
                //             ),
                //             SizedBox(
                //               height: 10.0,
                //             ),
                //             Column(
                //               children: [
                //                 Row(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Container(
                //                       child: Text('Present Address :',
                //                           style: TextStyle(
                //                             color: Colors.blueGrey[900],
                //                             fontFamily: 'Ubuntu',
                //                             fontSize: 14.0,
                //                             fontWeight: FontWeight.w300,
                //                           )),
                //                     ),
                //                     SizedBox(
                //                       width: 8.0,
                //                     ),
                //                     Flexible(
                //                       child: Container(
                //                         margin: EdgeInsets.only(top: 1.2),
                //                         child: Text(
                //                             resModel.data.address
                //                                     .presentAddress ??
                //                                 '',
                //                             softWrap: true,
                //                             style: TextStyle(
                //                               color: Colors.black,
                //                               fontFamily: 'Ubuntu',
                //                               fontSize: 12.0,
                //                               fontWeight: FontWeight.w300,
                //                             )),
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //                 SizedBox(
                //                   height: 10.0,
                //                 ),
                //                 Row(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Container(
                //                       child: Text('Permanent Address :',
                //                           style: TextStyle(
                //                             color: Colors.blueGrey[900],
                //                             fontFamily: 'Ubuntu',
                //                             fontSize: 14.0,
                //                             fontWeight: FontWeight.w300,
                //                           )),
                //                     ),
                //                     SizedBox(
                //                       width: 8.0,
                //                     ),
                //                     Flexible(
                //                       child: Container(
                //                         margin: EdgeInsets.only(top: 1.2),
                //                         child: Text(
                //                             resModel.data.address
                //                                     .permanentAddress ??
                //                                 '',
                //                             softWrap: true,
                //                             style: TextStyle(
                //                               color: Colors.black,
                //                               fontFamily: 'Ubuntu',
                //                               fontSize: 12.0,
                //                               fontWeight: FontWeight.w300,
                //                             )),
                //                       ),
                //                     )
                //                   ],
                //                 )
                //               ],
                //             )
                //           ],
                //         )),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ContactHR(contact: resModel.data.contact)),
                      );
                    },
                    child: Card(
                      elevation: 4.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Contact',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue.shade300,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                IdentityHR(identity: resModel.data.identity)),
                      );
                    },
                    child: Card(
                      elevation: 4.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Identity',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue.shade300,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      if (resModel.data.bankInfo.bankInfo != null)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BankDetailHR(
                                    bankInfoDetail: resModel.data.bankInfo)));
                      else
                        displayFlushBar(context, '', 'Bank Details not found');
                    },
                    child: Card(
                      elevation: 4.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Bank Details',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue.shade300,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImportantDatesHR(
                                importedDate: resModel.data.importedDate)),
                      );
                    },
                    child: Card(
                      elevation: 4.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Important Dates',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue.shade300,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      if (resModel.data.familyDependents.family != null)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FamilyDetailHR(
                                    familyDependents:
                                        resModel.data.familyDependents)));
                      else
                        displayFlushBar(
                            context, '', 'Family Dependants not found');
                    },
                    child: Card(
                      elevation: 4.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Family Dependants',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue.shade300,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      if (resModel.data.medical.medicalInfo != null)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MedicalHR(medical: resModel.data.medical)));
                      else
                        displayFlushBar(context, '', 'Medical data not found');
                    },
                    child: Card(
                      elevation: 4.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Medical',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue.shade300,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      if (resModel.data.documentInfo != null)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DocumentDetailHR(
                                    documentInfo: resModel.data.documentInfo)));
                      else
                        displayFlushBar(
                            context, '', 'Documents Details not found');
                    },
                    child: Card(
                      elevation: 4.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 14.0, top: 12.0, bottom: 12.0, right: 14.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Documents Details',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue.shade300,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ));
  }

  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  /// Method called to show the Pop Up Alert for Logout.
  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text('Alert!',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Ubuntu',
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              )),
          content: Text("Are you sure you want to logout?",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Ubuntu',
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
              )),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Prefs.setBool(PREF_IS_LOGIN, false);
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    ModalRoute.withName("/MainPageScreen"));
              },
              child: Text("Yes",
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Ubuntu',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  )),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("No",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Ubuntu',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  )),
            ),
          ],
        );
      },
    );
  }
}
