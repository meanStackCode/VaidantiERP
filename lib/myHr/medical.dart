import 'package:flutter/material.dart';
import 'package:test_app_flutter/models/dashboardModel/profile_model.dart';

class MedicalHR extends StatefulWidget {
  MedicalHR({Key key, this.medical}) : super(key: key);
  final Medical medical;

  @override
  State<MedicalHR> createState() => MedicalHRHRState();
}

class MedicalHRHRState extends State<MedicalHR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Medical',
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
              top: 20.0, left: 12.0, right: 12.0, bottom: 10.0),
          child: ListView.builder(
            //padding: EdgeInsets.all(10.0),
            shrinkWrap: true,
            itemCount: widget.medical.medicalInfo.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 5.0,
                shadowColor: Colors.grey,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                widget.medical.medicalInfo[index].healthName ??
                                    '',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          // Text('-',
                          //     style: TextStyle(
                          //       color: Colors.black,
                          //       fontSize: 16.0,
                          //       fontFamily: 'Ubuntu',
                          //       fontWeight: FontWeight.w500,
                          //     )),
                          // SizedBox(
                          //   width: 8.0,
                          // ),
                          // Flexible(
                          //     child: Flexible(
                          //         child: Text(
                          //             widget.medical.medicalInfo[index]
                          //                     .healthName ??
                          //                 '',
                          //             softWrap: true,
                          //             style: TextStyle(
                          //               color: Colors.black87,
                          //               fontSize: 15.0,
                          //               fontFamily: 'Ubuntu',
                          //               fontWeight: FontWeight.w300,
                          //             )))),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              child: Text("Condition Name",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          // Text('-',
                          //     style: TextStyle(
                          //       color: Colors.black,
                          //       fontSize: 16.0,
                          //       fontFamily: 'Ubuntu',
                          //       fontWeight: FontWeight.w500,
                          //     )),
                          // SizedBox(
                          //   width: 8.0,
                          // ),
                          // Flexible(
                          //     child: Flexible(
                          //         child: Text(
                          //             widget.medical.medicalInfo[index]
                          //                     .conditionName ??
                          //                 '',
                          //             softWrap: true,
                          //             style: TextStyle(
                          //               color: Colors.black87,
                          //               fontSize: 15.0,
                          //               fontFamily: 'Ubuntu',
                          //               fontWeight: FontWeight.w300,
                          //             )))),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: Flexible(
                                  child: Text(
                                      widget.medical.medicalInfo[index]
                                              .conditionName ??
                                          '',
                                      softWrap: true,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w300,
                                      )))),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              child: Text("Start Date",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ),
                          // SizedBox(
                          //   width: 5.0,
                          // ),
                          // Text('-',
                          //     style: TextStyle(
                          //       color: Colors.black,
                          //       fontSize: 16.0,
                          //       fontFamily: 'Ubuntu',
                          //       fontWeight: FontWeight.w500,
                          //     )),
                          // SizedBox(
                          //   width: 8.0,
                          // ),
                          // Flexible(
                          //     child: Flexible(
                          //         child: Text(
                          //             widget.medical.medicalInfo[index]
                          //                     .startDate ??
                          //                 '',
                          //             softWrap: true,
                          //             style: TextStyle(
                          //               color: Colors.black87,
                          //               fontSize: 15.0,
                          //               fontFamily: 'Ubuntu',
                          //               fontWeight: FontWeight.w300,
                          //             )))),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: Flexible(
                                  child: Text(
                                      widget.medical.medicalInfo[index]
                                              .startDate ??
                                          '',
                                      softWrap: true,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w300,
                                      )))),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              child: Text("End Date",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ),
                          // SizedBox(
                          //   width: 5.0,
                          // ),
                          // Text('-',
                          //     style: TextStyle(
                          //       color: Colors.black,
                          //       fontSize: 16.0,
                          //       fontFamily: 'Ubuntu',
                          //       fontWeight: FontWeight.w500,
                          //     )),
                          // SizedBox(
                          //   width: 8.0,
                          // ),
                          // Flexible(
                          //     child: Flexible(
                          //         child: Text(
                          //             widget.medical.medicalInfo[index]
                          //                     .endDate ??
                          //                 '',
                          //             softWrap: true,
                          //             style: TextStyle(
                          //               color: Colors.black87,
                          //               fontSize: 15.0,
                          //               fontFamily: 'Ubuntu',
                          //               fontWeight: FontWeight.w300,
                          //             )))),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: Flexible(
                                  child: Text(
                                      widget.medical.medicalInfo[index]
                                              .endDate ??
                                          '',
                                      softWrap: true,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w300,
                                      )))),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
