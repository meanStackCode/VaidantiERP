import 'package:flutter/material.dart';
import 'package:test_app_flutter/models/dashboardModel/profile_model.dart';

class FamilyDetailHR extends StatefulWidget {
  FamilyDetailHR({Key key, this.familyDependents}) : super(key: key);
  final FamilyDependents familyDependents;

  @override
  State<FamilyDetailHR> createState() => FamilyDetailHRState();
}

class FamilyDetailHRState extends State<FamilyDetailHR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Family Dependants',
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
            itemCount: widget.familyDependents.family.length,
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
                                '${widget.familyDependents.family[index].firstName ?? ''} '
                                '${widget.familyDependents.family[index].lastName ?? ''}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.w800,
                                )),
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
                          //             widget.familyDependents.family[index]
                          //                 .firstName,
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
                        height: 12.0,
                      ),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: <Widget>[
                      //     Flexible(
                      //       child: Container(
                      //         child: Text("Last Name",
                      //             style: TextStyle(
                      //               color: Colors.black,
                      //               fontSize: 16.0,
                      //               fontFamily: 'Ubuntu',
                      //               fontWeight: FontWeight.w500,
                      //             )),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: 5.0,
                      //     ),
                      //     Text('-',
                      //         style: TextStyle(
                      //           color: Colors.black,
                      //           fontSize: 16.0,
                      //           fontFamily: 'Ubuntu',
                      //           fontWeight: FontWeight.w500,
                      //         )),
                      //     SizedBox(
                      //       width: 8.0,
                      //     ),
                      //     Flexible(
                      //         child: Flexible(
                      //             child: Text(
                      //                 widget.familyDependents.family[index]
                      //                         .lastName ??
                      //                     '',
                      //                 softWrap: true,
                      //                 style: TextStyle(
                      //                   color: Colors.black87,
                      //                   fontSize: 15.0,
                      //                   fontFamily: 'Ubuntu',
                      //                   fontWeight: FontWeight.w300,
                      //                 )))),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              child: Text("Relation",
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
                          //             widget.familyDependents.family[index]
                          //                     .relationWith ??
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
                                      widget.familyDependents.family[index]
                                              .relationWith ??
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
                              child: Text("Contact",
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
                          //             widget.familyDependents.family[index]
                          //                     .emergencyContact ??
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
                                      widget.familyDependents.family[index]
                                              .emergencyContact ??
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
                              child: Text("Date Of Birth",
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
                          //             widget.familyDependents.family[index]
                          //                     .birthDate ??
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
                                      widget.familyDependents.family[index]
                                              .birthDate ??
                                          '',
                                      softWrap: true,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14.0,
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
