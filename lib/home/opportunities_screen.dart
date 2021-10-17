import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';
import 'package:test_app_flutter/home/opportunityDetail/opportunity_detail.dart';
import 'package:test_app_flutter/models/dashboardModel/opportunities_response_model.dart';
import 'package:test_app_flutter/utils/constants.dart';
import 'package:test_app_flutter/utils/prefs.dart';
import 'package:test_app_flutter/utils/utils.dart';

class OpportunitiesScreen extends StatefulWidget {
  @override
  OpportunitiesScreenState createState() => OpportunitiesScreenState();
}

class OpportunitiesScreenState extends State<OpportunitiesScreen> {
  TextEditingController searchController = new TextEditingController();
  bool loading = false;
  String statusColor;
  OpportunitiesResponseModel resModel;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  List<OpportunitiesData> opportunitiesSearchResult = [];

  List<OpportunitiesData> opportunitiesData = [];
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: ScrollAppBar(
          controller: controller,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Opportunities',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w300,
              )),
          centerTitle: true,
        ),
        body: Center(
          child: loading
              ? CircularProgressIndicator(color: Colors.blue, strokeWidth: 4.0)
              : SafeArea(
                  minimum: EdgeInsets.only(top: 10.0),
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: new Card(
                            elevation: 4.0,
                            shadowColor: Colors.grey[800],
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              onChanged: onSearchTextChanged,
                              controller: searchController,
                              decoration: InputDecoration(
                                  hintText: "Search",
                                  prefixIcon: Icon(Icons.search),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Expanded(
                            child: opportunitiesSearchResult.length != 0 ||
                                    searchController.text.isNotEmpty
                                ? ListView.builder(
                                    controller: controller,
                                    shrinkWrap: true,
                                    itemCount:
                                        opportunitiesSearchResult.length ?? 0,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Card(
                                        elevation: 5.0,
                                        shadowColor: Colors.grey,
                                        child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        OpportunityDetailScreen(
                                                            opportunitiesData:
                                                                opportunitiesSearchResult[
                                                                    index])),
                                              );
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.0,
                                                  vertical: 12.0),
                                              child: Column(
                                                children: [
                                                  Row(children: [
                                                    Flexible(
                                                      child: RichText(
                                                          text: TextSpan(
                                                              text: opportunitiesSearchResult[
                                                                          index]
                                                                      ?.opportunityName ??
                                                                  '',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 16.0,
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                              children: [
                                                            TextSpan(
                                                              text:
                                                                  ' (${opportunitiesSearchResult[index]?.countryUniqueId ?? ''})',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .blue[600],
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14.0,
                                                              ),
                                                            )
                                                          ])),
                                                    )
                                                  ]),
                                                  SizedBox(height: 5.0),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Flexible(
                                                          child: Text(
                                                              opportunitiesSearchResult[
                                                                          index]
                                                                      ?.projectType ??
                                                                  '',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .grey[800],
                                                                fontSize: 14.0,
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              )),
                                                        ),
                                                      ]),
                                                  SizedBox(height: 8.0),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            opportunitiesSearchResult[
                                                                        index]
                                                                    ?.clientName ??
                                                                '',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .red[600],
                                                              fontSize: 14.0,
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                            )),
                                                        Flexible(
                                                          child: RichText(
                                                              text: TextSpan(
                                                            text:
                                                                '${opportunitiesSearchResult[index]?.opportunitiesUniqueId ?? ''} ',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[850],
                                                              fontSize: 14.0,
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          )),
                                                        ),
                                                      ]),
                                                  SizedBox(height: 5.0),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Flexible(
                                                        child: RichText(
                                                            text: TextSpan(
                                                                text:
                                                                    '${opportunitiesSearchResult[index]?.enterAmount ?? ''} ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                          .grey[
                                                                      850],
                                                                  fontSize:
                                                                      14.0,
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                                children: [
                                                              TextSpan(
                                                                text:
                                                                    '${opportunitiesSearchResult[index]?.currency ?? ''} ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                          .grey[
                                                                      600],
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '(\$ ${opportunitiesSearchResult[index]?.expectedRevenue ?? ''})',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                          .blue[
                                                                      600],
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                              )
                                                            ])),
                                                      ),
                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: getStatusColor(
                                                                    opportunitiesSearchResult[index]
                                                                            ?.leadActivityStatus ??
                                                                        '')
                                                                .toColor(),
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        2.0))),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 6.0,
                                                                vertical: 3.0),
                                                        child: Text(
                                                            '${opportunitiesSearchResult[index]?.leadActivityStatus?.toUpperCase() ?? 'None'}',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12.0,
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            )),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )),
                                      );
                                    })
                                : ListView.builder(
                                    controller: controller,
                                    shrinkWrap: true,
                                    itemCount: opportunitiesData.length ?? 0,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Card(
                                        elevation: 5.0,
                                        shadowColor: Colors.grey,
                                        child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        OpportunityDetailScreen(
                                                            opportunitiesData:
                                                                opportunitiesSearchResult[
                                                                    index])),
                                              );
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.0,
                                                  vertical: 12.0),
                                              child: Column(
                                                children: [
                                                  Row(children: [
                                                    Flexible(
                                                      child: RichText(
                                                          text: TextSpan(
                                                              text: opportunitiesData[
                                                                          index]
                                                                      ?.opportunityName ??
                                                                  '',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 16.0,
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                              children: [
                                                            TextSpan(
                                                              text:
                                                                  ' (${opportunitiesData[index]?.countryUniqueId ?? ''})',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .blue[600],
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14.0,
                                                              ),
                                                            )
                                                          ])),
                                                    )
                                                  ]),
                                                  SizedBox(height: 5.0),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Flexible(
                                                          child: Text(
                                                              opportunitiesData[
                                                                          index]
                                                                      ?.projectType ??
                                                                  '',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .grey[800],
                                                                fontSize: 14.0,
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              )),
                                                        )
                                                      ]),
                                                  SizedBox(height: 8.0),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            opportunitiesData[
                                                                        index]
                                                                    ?.clientName ??
                                                                '',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .red[600],
                                                              fontSize: 14.0,
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                            )),
                                                        Flexible(
                                                          child: RichText(
                                                              text: TextSpan(
                                                            text:
                                                                '${opportunitiesData[index]?.opportunitiesUniqueId ?? ''} ',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[850],
                                                              fontSize: 14.0,
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          )),
                                                        ),
                                                      ]),
                                                  SizedBox(height: 5.0),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Flexible(
                                                        child: RichText(
                                                            text: TextSpan(
                                                                text:
                                                                    '${opportunitiesData[index]?.enterAmount ?? ''} ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                          .grey[
                                                                      850],
                                                                  fontSize:
                                                                      14.0,
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                                children: [
                                                              TextSpan(
                                                                text:
                                                                    '${opportunitiesData[index]?.currency ?? ''} ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                          .grey[
                                                                      600],
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '(\$ ${opportunitiesData[index]?.expectedRevenue ?? ''})',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                          .blue[
                                                                      600],
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                              )
                                                            ])),
                                                      ),
                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: getStatusColor(
                                                                    opportunitiesData[index]
                                                                            ?.leadActivityStatus ??
                                                                        '')
                                                                .toColor(),
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        2.0))),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 6.0,
                                                                vertical: 3.0),
                                                        child: Text(
                                                            '${opportunitiesData[index]?.leadActivityStatus?.toUpperCase() ?? 'None'}',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12.0,
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            )),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          '${opportunitiesData[index]?.contractingStatus?.toUpperCase() ?? ''}',
                                                          style: TextStyle(
                                                            color: Colors
                                                                .grey[700],
                                                            fontSize: 12.0,
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontWeight:
                                                                FontWeight.w800,
                                                          )),
                                                      Text(
                                                          '${opportunitiesData[index]?.stages ?? ''}',
                                                          style: TextStyle(
                                                            color: Colors
                                                                .grey[600],
                                                            fontSize: 12.0,
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontWeight:
                                                                FontWeight.w800,
                                                          )),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )),
                                      );
                                    }))
                      ],
                    ),
                  )),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loading = true;
    loadOppotunitiesData();
  }

  /// api method called to load the profile data
  Future<void> loadOppotunitiesData() async {
    var formData =
        FormData.fromMap({'auth_token': Prefs.getString(PREF_AUTH_TOKEN)});
    var response = await Dio().post(
        'https://vaidanti.com/EmpactERP/Api/Admin/opportunities_list',
        data: formData);
    print('My Projects - $response');
    if (response.statusCode == 200) {
      var model = OpportunitiesResponseModel.fromJson(response.data);
      if (model.status == '200') {
        setState(() {
          resModel = model;
          opportunitiesData = resModel.data;
          loading = !loading;
        });
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

  String getStatusColor(String status) {
    if (status.toLowerCase() == "Postpone".toLowerCase())
      return '#5d9cec';
    else if (status.toLowerCase() == "Active".toLowerCase())
      return '#ff902b';
    else if (status.toLowerCase() == "Close".toLowerCase())
      return '#f05050';
    else if (status.toLowerCase() == "Pending".toLowerCase())
      return '#ff902b';
    else if (status.toLowerCase() == "Won".toLowerCase())
      return '#27c24c';
    else
      return 'ff902b';
  }

  onSearchTextChanged(String text) async {
    opportunitiesSearchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    opportunitiesData.forEach((opporunities) {
      if (opporunities.opportunityName
              .toLowerCase()
              .contains(text.toLowerCase()) ||
          opporunities.countryUniqueId
              .toLowerCase()
              .contains(text.toLowerCase()) ||
          opporunities.currency.toLowerCase().contains(text.toLowerCase()) ||
          opporunities.opportunitiesUniqueId
              .toLowerCase()
              .contains(text.toLowerCase()) ||
          opporunities.projectType.toLowerCase().contains(text.toLowerCase()))
        opportunitiesSearchResult.add(opporunities);
      setState(() {});
    });
  }
}
