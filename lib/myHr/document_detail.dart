import 'package:flutter/material.dart';
import 'package:test_app_flutter/models/dashboardModel/profile_model.dart';
import 'package:url_launcher/url_launcher.dart';

class DocumentDetailHR extends StatefulWidget {
  DocumentDetailHR({Key key, this.documentInfo}) : super(key: key);
  final DocumentInfo documentInfo;

  @override
  State<DocumentDetailHR> createState() => DocumentDetailHRState();
}

class DocumentDetailHRState extends State<DocumentDetailHR> {
  bool isResume,
      isOfferLetter,
      isJoiningLetter,
      isContractProof,
      isIdProof,
      isOtherDocument;

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (widget.documentInfo.resume != null)
        isResume = true;
      else
        isResume = false;

      if (widget.documentInfo.joiningLetter != null)
        isJoiningLetter = true;
      else
        isJoiningLetter = false;

      if (widget.documentInfo.offerLetter != null)
        isOfferLetter = true;
      else
        isOfferLetter = false;

      if (widget.documentInfo.contractPaper != null)
        isContractProof = true;
      else
        isContractProof = false;

      if (widget.documentInfo.idProof != null)
        isIdProof = true;
      else
        isIdProof = false;

      if (widget.documentInfo.otherDocument != null)
        isOtherDocument = true;
      else
        isOtherDocument = false;
    });
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Documents Detail',
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
            child: Container(
              child: Column(
                children: [
                  Card(
                    elevation: 6.0,
                    shadowColor: Colors.grey[800],
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Column(
                        children: [
                          Visibility(
                            visible: isResume,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text('Resume :',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Flexible(
                                    child: InkWell(
                                  onTap: () {
                                    launchURL(widget.documentInfo.resume ?? '');
                                  },
                                  child: Text('View Resume',
                                      softWrap: true,
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue[900],
                                        fontFamily: 'Ubuntu',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Visibility(
                            visible: isOfferLetter,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text('Offer Letter :',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Flexible(
                                    child: InkWell(
                                  onTap: () {
                                    launchURL(
                                        widget.documentInfo.offerLetter ?? '');
                                  },
                                  child: Text('View Offer Letter',
                                      softWrap: true,
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue[900],
                                        fontFamily: 'Ubuntu',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Visibility(
                            visible: isJoiningLetter,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text('Joining Letter :',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Flexible(
                                    child: InkWell(
                                  onTap: () {
                                    launchURL(
                                        widget.documentInfo.offerLetter ?? '');
                                  },
                                  child: Text('View Joining Letter',
                                      softWrap: true,
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue[900],
                                        fontFamily: 'Ubuntu',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Visibility(
                            visible: isContractProof,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text('Contract Paper :',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Flexible(
                                    child: InkWell(
                                  onTap: () {
                                    launchURL(
                                        widget.documentInfo.offerLetter ?? '');
                                  },
                                  child: Text('View Contract Paper',
                                      softWrap: true,
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue[900],
                                        fontFamily: 'Ubuntu',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Visibility(
                            visible: isIdProof,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text('ID Proof :',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Flexible(
                                    child: InkWell(
                                  onTap: () {
                                    launchURL(
                                        widget.documentInfo.offerLetter ?? '');
                                  },
                                  child: Text('View ID Proof',
                                      softWrap: true,
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue[900],
                                        fontFamily: 'Ubuntu',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Visibility(
                    visible: isOtherDocument,
                    child: Card(
                      elevation: 6.0,
                      shadowColor: Colors.grey[800],
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Column(children: [
                          Row(
                            children: [
                              Text('Other Documents',
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: widget.documentInfo.otherDocument.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child:
                                              Text('Document ' '${index + 1} :',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16.0,
                                                    fontFamily: 'Ubuntu',
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            launchURL(widget
                                                    .documentInfo
                                                    .otherDocument[index]
                                                    .document ??
                                                '');
                                          },
                                          child: Text(
                                              'View Document '
                                              '${index + 1}',
                                              softWrap: true,
                                              style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Colors.blue[900],
                                                fontFamily: 'Ubuntu',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w300,
                                              )),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }

  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
