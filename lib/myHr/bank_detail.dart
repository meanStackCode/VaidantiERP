import 'package:flutter/material.dart';
import 'package:test_app_flutter/models/dashboardModel/profile_model.dart';

class BankDetailHR extends StatefulWidget {
  BankDetailHR({Key key, this.bankInfoDetail}) : super(key: key);
  final BankInfoDetail bankInfoDetail;

  @override
  State<BankDetailHR> createState() => BankDetailHRState();
}

class BankDetailHRState extends State<BankDetailHR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Bank Detail',
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
            itemCount: widget.bankInfoDetail.bankInfo.length,
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
                          // Container(
                          //   child: Text("Bank",
                          //       style: TextStyle(
                          //         color: Colors.black,
                          //         fontSize: 16.0,
                          //         fontFamily: 'Ubuntu',
                          //         fontWeight: FontWeight.w500,
                          //       )),
                          // ),
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
                          Flexible(
                              child: Text(
                                  widget?.bankInfoDetail?.bankInfo[index]
                                          ?.bankName ??
                                      '',
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18.0,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w800,
                                  ))),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: [
                          Text("Benificiary Name",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: Flexible(
                                  child: Text(
                                      widget.bankInfoDetail.bankInfo[index]
                                              .beneficiaryName ??
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
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: <Widget>[
                      //     Flexible(
                      //       child: Container(
                      //         child: Text("Benificiary Name",
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
                      //                 widget.bankInfoDetail.bankInfo[index]
                      //                         .beneficiaryName ??
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
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              child: Text("Account Number",
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
                          //             widget.bankInfoDetail.bankInfo[index]
                          //                     .accountNumber ??
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
                                      widget.bankInfoDetail.bankInfo[index]
                                              .accountNumber ??
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
                        height: 12.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              child: Text("IBAN Number",
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
                          //             widget.bankInfoDetail.bankInfo[index]
                          //                     .employeeBankId ??
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
                                      widget.bankInfoDetail.bankInfo[index]
                                              .employeeBankId ??
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
                        height: 12.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              child: Text("Swift Code",
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
                          //             widget.bankInfoDetail.bankInfo[index]
                          //                     .swiftCode ??
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
                                      widget.bankInfoDetail.bankInfo[index]
                                              .swiftCode ??
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
                        height: 12.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              child: Text("Branch Name",
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
                          //             widget.bankInfoDetail.bankInfo[index]
                          //                     .branchName ??
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
                                      widget.bankInfoDetail.bankInfo[index]
                                              .branchName ??
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
                        height: 12.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              child: Text("Currency",
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
                          //             widget.bankInfoDetail.bankInfo[index]
                          //                     .currency ??
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
                                      widget.bankInfoDetail.bankInfo[index]
                                              .currency ??
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
