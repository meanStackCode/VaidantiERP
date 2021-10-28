import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_app_flutter/models/dashboardModel/task_response_model.dart';
import 'package:test_app_flutter/utils/constants.dart';
import 'package:test_app_flutter/utils/prefs.dart';
import 'package:test_app_flutter/utils/utils.dart';
import 'package:dashed_circle/dashed_circle.dart';

class TaskListScreen extends StatefulWidget {
  @override
  TasksPageState createState() => TasksPageState();
}

class TasksPageState extends State<TaskListScreen> {
  TextEditingController taskNameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController searchController = new TextEditingController();
  bool loading = false;
  bool isDateSelected = false;
  TaskListResponseModel resModel;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  List<TaskData> taskSearchResult = [];
  List<TaskData> taskData = [];
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          elevation: 5.0,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue[600],
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20.0))),
                builder: (context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return SafeArea(
                        child: Container(
                      height: MediaQuery.of(context).size.height * 0.94,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 10.0,
                              ),
                              Divider(
                                height: 0.2,
                                thickness: 0.6,
                                indent: 150,
                                endIndent: 150,
                                color: Colors.blue[600],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    child: Text('Create Task',
                                        style: TextStyle(
                                          color: Colors.blue[700],
                                          fontFamily: 'Ubuntu',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w800,
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 12.0),
                                  child: TextField(
                                      controller: taskNameController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintText: "Task Name...",
                                      ),
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                        fontFamily: 'Ubuntu',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textInputAction: TextInputAction.done)),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 8.0, left: 12.0, right: 12.0),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          DashedCircle(
                                            child: CircleAvatar(
                                              radius: 15.0,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons.person_add_alt_rounded,
                                                size: 20.0,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                            color: Colors.grey[600],
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Assigned to',
                                                  style: TextStyle(
                                                    color: Colors.grey[700],
                                                    fontFamily: 'Ubuntu',
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.w300,
                                                  )),
                                              Text('abc@gmail.com',
                                                  style: TextStyle(
                                                    color: Colors.grey[900],
                                                    fontFamily: 'Ubuntu',
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                              Visibility(
                                                visible: false,
                                                child: Text('Unassigned',
                                                    style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontFamily: 'Ubuntu',
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    )),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50.0,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        selectDueDate(context, setState);
                                      },
                                      child: Row(
                                        children: [
                                          DashedCircle(
                                            child: CircleAvatar(
                                              radius: 15.0,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons.date_range_rounded,
                                                size: 20.0,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                            color: Colors.grey[600],
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Due Date',
                                                  style: TextStyle(
                                                    color: Colors.grey[700],
                                                    fontFamily: 'Ubuntu',
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w400,
                                                  )),
                                              Visibility(
                                                visible: isDateSelected,
                                                child: Text(
                                                    '${DateFormat('yyyy-MM-dd').format(selectedDate)}',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Ubuntu',
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    )),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 12.0),
                                  child: TextField(
                                      controller: descController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintText: "Description...",
                                      ),
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                        fontFamily: 'Ubuntu',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textInputAction: TextInputAction.done)),
                            ],
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                padding: EdgeInsets.all(14.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.camera,
                                      color: Colors.blue[600],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Icon(Icons.photo, color: Colors.blue[600]),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Icon(Icons.attach_file_rounded,
                                        color: Colors.blue[600])
                                  ],
                                ),
                              )),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: EdgeInsets.all(14.0),
                              child: Text('CREATE',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: 'Ubuntu',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ));
                  });
                });
            //settingModalBottomSheet(context, taskNameController);
          },
        ),
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
                        child: taskSearchResult.length != 0 ||
                                searchController.text.isNotEmpty
                            ? ListView.builder(
                                shrinkWrap: true,
                                itemCount: taskSearchResult.length ?? 0,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                    elevation: 5.0,
                                    shadowColor: Colors.grey,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.0, vertical: 12.0),
                                      child: Column(
                                        children: [
                                          Row(children: [
                                            Flexible(
                                              child: RichText(
                                                  text: TextSpan(
                                                text: taskSearchResult[index]
                                                        ?.taskName ??
                                                    '',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                  fontFamily: 'Ubuntu',
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              )),
                                            )
                                          ]),
                                          SizedBox(height: 10.0),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                    taskSearchResult[index]
                                                            ?.customerGroup ??
                                                        '',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.red[600],
                                                      fontSize: 14.0,
                                                      fontFamily: 'Ubuntu',
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    )),
                                              ]),
                                          SizedBox(height: 5.0),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: RichText(
                                                    text: TextSpan(
                                                  text:
                                                      '${taskSearchResult[index]?.dueDate ?? ''}',
                                                  style: TextStyle(
                                                    color: Colors.blue[600],
                                                    fontFamily: 'Ubuntu',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12.0,
                                                  ),
                                                )),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: getStatusColor(
                                                            taskSearchResult[
                                                                        index]
                                                                    ?.taskStatus ??
                                                                '')
                                                        .toColor(),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                2.0))),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 6.0,
                                                    vertical: 3.0),
                                                child: Text(
                                                    '${taskSearchResult[index]?.taskStatus?.toUpperCase() ?? 'None'}',
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
                                  );
                                })
                            : ListView.builder(
                                shrinkWrap: true,
                                itemCount: taskData.length ?? 0,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                    elevation: 5.0,
                                    shadowColor: Colors.grey,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.0, vertical: 12.0),
                                      child: Column(
                                        children: [
                                          Row(children: [
                                            Flexible(
                                              child: RichText(
                                                  text: TextSpan(
                                                text:
                                                    taskData[index]?.taskName ??
                                                        '',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                  fontFamily: 'Ubuntu',
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              )),
                                            )
                                          ]),
                                          SizedBox(height: 10.0),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                    taskData[index]
                                                            ?.customerGroup ??
                                                        '',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.grey[800],
                                                      fontSize: 14.0,
                                                      fontFamily: 'Ubuntu',
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    )),
                                              ]),
                                          SizedBox(height: 5.0),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: RichText(
                                                    text: TextSpan(
                                                  text:
                                                      '${taskData[index]?.dueDate ?? ''}',
                                                  style: TextStyle(
                                                    color: Colors.blue[600],
                                                    fontFamily: 'Ubuntu',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12.0,
                                                  ),
                                                )),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: getStatusColor(
                                                            taskData[index]
                                                                    ?.taskStatus ??
                                                                '')
                                                        .toColor(),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                2.0))),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 6.0,
                                                    vertical: 3.0),
                                                child: Text(
                                                    '${taskData[index]?.taskStatus?.toUpperCase() ?? 'None'}',
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
                                  );
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
        'https://vaidanti.com/EmpactERP/Api/Admin/task_list',
        data: formData);
    print('Tasks - $response');
    if (response.statusCode == 200) {
      var model = TaskListResponseModel.fromJson(response.data);
      if (model.status == '200') {
        setState(() {
          resModel = model;
          taskData = resModel.data;
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
    taskSearchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    taskData.forEach((project) {
      if (project.taskName.toLowerCase().contains(text.toLowerCase()) ||
          project.customerGroup.toLowerCase().contains(text.toLowerCase()))
        taskSearchResult.add(project);
      setState(() {});
    });
  }

  selectDueDate(BuildContext context, StateSetter setState) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        isDateSelected = true;
      });
  }
}
