import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_app_flutter/home/projectDetail/project_detail.dart';
import 'package:test_app_flutter/models/dashboardModel/my_projects_response_model.dart';
import 'package:test_app_flutter/utils/constants.dart';
import 'package:test_app_flutter/utils/prefs.dart';
import 'package:test_app_flutter/utils/utils.dart';

class MyProjectsScreen extends StatefulWidget {
  @override
  MyProjectsPageState createState() => MyProjectsPageState();
}

class MyProjectsPageState extends State<MyProjectsScreen> {
  TextEditingController searchController = new TextEditingController();
  bool loading = false;
  MyProjectResponseModel resModel;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  List<MyProjectsData> projectsSearchResult = [];

  List<MyProjectsData> projectsData = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: loading
              ? CircularProgressIndicator(color: Colors.blue, strokeWidth: 4.0)
              : SafeArea(
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
                        child: projectsSearchResult.length != 0 ||
                                searchController.text.isNotEmpty
                            ? ListView.builder(
                                shrinkWrap: true,
                                itemCount: projectsSearchResult.length ?? 0,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                      elevation: 5.0,
                                      shadowColor: Colors.grey,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProjectDetailScreen()),
                                          );
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12.0, vertical: 12.0),
                                          child: Column(
                                            children: [
                                              Row(children: [
                                                Flexible(
                                                  child: RichText(
                                                      text: TextSpan(
                                                          text: projectsSearchResult[
                                                                      index]
                                                                  ?.projectName ??
                                                              '',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16.0,
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontWeight:
                                                                FontWeight.w800,
                                                          ),
                                                          children: [
                                                        TextSpan(
                                                          text:
                                                              ' (${projectsSearchResult[index]?.countryUniqueId ?? ''})',
                                                          style: TextStyle(
                                                            color: Colors
                                                                .blue[600],
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ])),
                                                )
                                              ]),
                                              SizedBox(height: 10.0),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        projectsSearchResult[
                                                                    index]
                                                                ?.projectManager ??
                                                            '',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Colors.red[600],
                                                          fontSize: 14.0,
                                                          fontFamily: 'Ubuntu',
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        )),
                                                    Flexible(
                                                      child: RichText(
                                                          text: TextSpan(
                                                        text:
                                                            '${projectsSearchResult[index]?.projectUniqueId ?? ''} ',
                                                        style: TextStyle(
                                                          color:
                                                              Colors.grey[850],
                                                          fontSize: 14.0,
                                                          fontFamily: 'Ubuntu',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )),
                                                    ),
                                                  ]),
                                              SizedBox(height: 5.0),
                                              Row(
                                                children: [
                                                  Flexible(
                                                    child: RichText(
                                                        text: TextSpan(
                                                            text:
                                                                '${projectsSearchResult[index]?.clientName ?? ''} ',
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
                                                            children: [
                                                          TextSpan(
                                                            text: '(Client)',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .blue[600],
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.0,
                                                            ),
                                                          )
                                                        ])),
                                                  ),
                                                ],
                                              ),
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
                                                                '${projectsSearchResult[index]?.enterAmount ?? ''} ',
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
                                                            children: [
                                                          TextSpan(
                                                            text:
                                                                '${projectsSearchResult[index]?.currency ?? ''}',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[600],
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                '(\$ ${projectsSearchResult[index]?.projectvalue ?? ''})',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .blue[600],
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.0,
                                                            ),
                                                          )
                                                        ])),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: getStatusColor(
                                                                projectsSearchResult[
                                                                            index]
                                                                        ?.projectStatus ??
                                                                    '')
                                                            .toColor(),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    2.0))),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 6.0,
                                                            vertical: 3.0),
                                                    child: Text(
                                                        '${projectsSearchResult[index]?.projectStatus?.toUpperCase() ?? 'None'}',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                          fontFamily: 'Ubuntu',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ));
                                })
                            : ListView.builder(
                                shrinkWrap: true,
                                itemCount: projectsData.length ?? 0,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                      elevation: 5.0,
                                      shadowColor: Colors.grey,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProjectDetailScreen()),
                                          );
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12.0, vertical: 12.0),
                                          child: Column(
                                            children: [
                                              Row(children: [
                                                Flexible(
                                                  child: RichText(
                                                      text: TextSpan(
                                                          text: projectsData[
                                                                      index]
                                                                  ?.projectName ??
                                                              '',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16.0,
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontWeight:
                                                                FontWeight.w800,
                                                          ),
                                                          children: [
                                                        TextSpan(
                                                          text:
                                                              ' (${projectsData[index]?.countryUniqueId ?? ''})',
                                                          style: TextStyle(
                                                            color: Colors
                                                                .blue[600],
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ])),
                                                )
                                              ]),
                                              SizedBox(height: 10.0),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        projectsData[index]
                                                                ?.projectManager ??
                                                            '',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Colors.red[600],
                                                          fontSize: 14.0,
                                                          fontFamily: 'Ubuntu',
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        )),
                                                    Flexible(
                                                      child: RichText(
                                                          text: TextSpan(
                                                        text:
                                                            '${projectsData[index]?.projectUniqueId ?? ''} ',
                                                        style: TextStyle(
                                                          color:
                                                              Colors.grey[850],
                                                          fontSize: 14.0,
                                                          fontFamily: 'Ubuntu',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )),
                                                    ),
                                                  ]),
                                              SizedBox(height: 5.0),
                                              Row(
                                                children: [
                                                  Flexible(
                                                    child: RichText(
                                                        text: TextSpan(
                                                            text:
                                                                '${projectsData[index]?.clientName ?? ''} ',
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
                                                            children: [
                                                          TextSpan(
                                                            text: '(Client)',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .blue[600],
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.0,
                                                            ),
                                                          )
                                                        ])),
                                                  ),
                                                ],
                                              ),
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
                                                                '${projectsData[index]?.enterAmount ?? ''} ',
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
                                                            children: [
                                                          TextSpan(
                                                            text:
                                                                '${projectsData[index]?.currency ?? ''} ',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[600],
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                '(\$ ${projectsData[index]?.projectvalue ?? ''})',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .blue[600],
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.0,
                                                            ),
                                                          )
                                                        ])),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: getStatusColor(
                                                                projectsData[
                                                                            index]
                                                                        ?.projectStatus ??
                                                                    '')
                                                            .toColor(),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    2.0))),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 6.0,
                                                            vertical: 3.0),
                                                    child: Text(
                                                        '${projectsData[index]?.projectStatus?.toUpperCase() ?? 'None'}',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                          fontFamily: 'Ubuntu',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ));
                                }),
                      )
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
    loadProjectsData();
  }

  /// api method called to load the profile data
  Future<void> loadProjectsData() async {
    var formData =
        FormData.fromMap({'auth_token': Prefs.getString(PREF_AUTH_TOKEN)});
    var response = await Dio().post(
        'https://vaidanti.com/EmpactERP/Api/Admin/project_list',
        data: formData);
    print('My Projects - $response');
    if (response.statusCode == 200) {
      var model = MyProjectResponseModel.fromJson(response.data);
      if (model.status == '200') {
        setState(() {
          resModel = model;
          projectsData = resModel.data;
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
    if (status.toLowerCase() == "In Progress".toLowerCase())
      return '#5d9cec';
    else if (status.toLowerCase() == "Active".toLowerCase())
      return '#ff902b';
    else if (status.toLowerCase() == "Cancel".toLowerCase())
      return '#f05050';
    else if (status.toLowerCase() == "On Hold".toLowerCase())
      return '#ff902b';
    else if (status.toLowerCase() == "Completed".toLowerCase())
      return '#27c24c';
    else
      return 'ff902b';
  }

  onSearchTextChanged(String text) async {
    projectsSearchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    projectsData.forEach((project) {
      if (project.projectName.toLowerCase().contains(text.toLowerCase()) ||
          project.countryUniqueId.toLowerCase().contains(text.toLowerCase()) ||
          project.projectUniqueId.toLowerCase().contains(text.toLowerCase()) ||
          project.clientName.toLowerCase().contains(text.toLowerCase()) ||
          project.currency.toLowerCase().contains(text.toLowerCase()))
        projectsSearchResult.add(project);
      setState(() {});
    });
  }
}
