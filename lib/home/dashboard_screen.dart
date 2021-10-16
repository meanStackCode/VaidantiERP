import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:test_app_flutter/home/leads_screen.dart';
import 'package:test_app_flutter/home/opportunities_screen.dart';
import 'package:test_app_flutter/models/dashboardModel/dashboard_model.dart';
import 'package:test_app_flutter/utils/constants.dart';
import 'package:test_app_flutter/utils/prefs.dart';
import 'package:test_app_flutter/utils/utils.dart';

class DashboardPage extends StatefulWidget {
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  bool loading = false;
  DashBoardModel responseModel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: loading
              ? CircularProgressIndicator(color: Colors.blue, strokeWidth: 4.0)
              : BodyWidget(loading, responseModel),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loading = true;
    loadDashBoardData();
  }

  /// api method called to load the dashboard data
  Future<void> loadDashBoardData() async {
    var formData =
        FormData.fromMap({'auth_token': Prefs.getString(PREF_AUTH_TOKEN)});
    var response = await Dio().post(
        'https://vaidanti.com/EmpactERP/Api/Admin/total_income',
        data: formData);
    if (response.statusCode == 200) {
      var model = DashBoardModel.fromJson(response.data);
      if (model.status == '200') {
        setState(() {
          responseModel = model;
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
}

class BodyWidget extends StatelessWidget {
  BodyWidget(this.loading, this.responseModel);
  final bool loading;
  final DashBoardModel responseModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Align(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Empact Consulting',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.w800,
                          color: Colors.blue[600])),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shadowColor: Colors.blue.shade200,
                          elevation: 4.0,
                          child: Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5.0,
                                ),
                                Icon(Icons.add,
                                    color: Colors.blue[600], size: 30.0),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Income Today',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        '\$ ${responseModel.data.todayIncome ?? 0.00}',
                                        style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 4.0,
                          shadowColor: Colors.red[200],
                          child: Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5.0,
                                ),
                                Icon(Icons.remove,
                                    color: Colors.red[600], size: 30.0),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text('Expense Today',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        '\$ ${responseModel.data.todayExpense.toString() ?? '0.00'}',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shadowColor: Colors.blue.shade200,
                          elevation: 4.0,
                          child: Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5.0,
                                ),
                                Icon(Icons.add,
                                    color: Colors.blue[600], size: 30.0),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Total Income',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        '\$ ${responseModel.data.totalIncome.toString() ?? '0.00'}',
                                        style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 4.0,
                          shadowColor: Colors.red[200],
                          child: Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5.0,
                                ),
                                Icon(Icons.remove,
                                    color: Colors.red[600], size: 30.0),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text('Total Expense',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        '\$ ${responseModel.data.totalExpense.toString() ?? '0.00'}',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Divider(
                    height: 0.1,
                    thickness: 0.6,
                    indent: 120,
                    endIndent: 120,
                    color: Colors.blue[100],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shadowColor: '#656565'.toColor(),
                          elevation: 4.0,
                          child: Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 8.0,
                                ),
                                Image.asset(
                                  'asset/images/cart.png',
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Invoice Today',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        '\$ ${responseModel.data.paidInvoiceToday.toString() ?? '0.00'}',
                                        style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 4.0,
                          shadowColor: '#7266ba'.toColor(),
                          child: Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 12.0,
                                ),
                                Image.asset(
                                  'asset/images/money.png',
                                  width: 22,
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text('Payment Today',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        '\$ ${responseModel.data.paymentToday.toString() ?? '0.00'}',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shadowColor: '#7266ba'.toColor(),
                          elevation: 4.0,
                          child: Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                Image.asset(
                                  'asset/images/money.png',
                                  width: 22,
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Paid Amount',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        '\$ ${responseModel.data.paidAmount.toString() ?? '0.00'}',
                                        style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 4.0,
                          shadowColor: '#f05050'.toColor(),
                          child: Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                Image.asset(
                                  'asset/images/dollar.png',
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text('Due Amount',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        '\$ ${responseModel.data.dueAmount.toString() ?? '0.00'}',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Divider(
                    height: 0.1,
                    thickness: 0.6,
                    indent: 120,
                    endIndent: 120,
                    color: Colors.blue[100],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shadowColor: '#f05050'.toColor(),
                          elevation: 4.0,
                          child: Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                Image.asset(
                                  'asset/images/tasks.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('In Progress Task',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        responseModel.data.tasksInProgress
                                                .toString() ??
                                            '0',
                                        style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 4.0,
                          shadowColor: '#f05050'.toColor(),
                          child: Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 8.0,
                                ),
                                Image.asset(
                                  'asset/images/tickets.png',
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text('Open Tickets',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        responseModel.data.ticketsOpen
                                                .toString() ??
                                            '0',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shadowColor: '#f05050'.toColor(),
                          elevation: 4.0,
                          child: Container(
                            height: 80.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 8.0,
                                ),
                                Image.asset(
                                  'asset/images/bug.png',
                                  width: 22,
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('In Progress Bugs',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        responseModel.data.bugsInProgress
                                                .toString() ??
                                            '0',
                                        style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 4.0,
                          shadowColor: '#f05050'.toColor(),
                          child: Container(
                            height: 80.0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                Image.asset(
                                  'asset/images/folder.png',
                                  width: 22,
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('In Progress \nProjects',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w500,
                                        )),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                        responseModel.data.projectInProgress
                                                .toString() ??
                                            '0',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                      elevation: 4.0,
                      shadowColor: Colors.grey,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5.0, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text('Completed \nProjects',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                      responseModel.data.completedProjects
                                              .toString() ??
                                          '0',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black54))
                                ],
                              ),
                            ),
                            Container(
                                height: 40,
                                child: VerticalDivider(color: Colors.blue)),
                            Container(
                              child: Column(
                                children: [
                                  Text('Completed \nTasks',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                      responseModel.data.completedTasks
                                              .toString() ??
                                          '0',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black54))
                                ],
                              ),
                            ),
                            Container(
                                height: 40,
                                child: VerticalDivider(color: Colors.blue)),
                            Container(
                              child: Column(
                                children: [
                                  Text('Total Invoice \nAmount',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                      '\$ ${responseModel.data.totalInvoiceAmount ?? 0.00}',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black54))
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    elevation: 4.0,
                    shadowColor: Colors.grey,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.0, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text('Total \nEstimate',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                    responseModel.data.totalEstimateAmount
                                            .toString() ??
                                        '0',
                                    style: TextStyle(
                                        fontFamily: 'Ubuntu',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black54))
                              ],
                            ),
                          ),
                          Container(
                              height: 40,
                              child: VerticalDivider(color: Colors.blue)),
                          Container(
                            child: Column(
                              children: [
                                Text('Resolved \nBugs',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                    responseModel.data.totalResolvedBugs
                                            .toString() ??
                                        '0',
                                    style: TextStyle(
                                        fontFamily: 'Ubuntu',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black54))
                              ],
                            ),
                          ),
                          Container(
                              height: 40,
                              child: VerticalDivider(color: Colors.blue)),
                          Container(
                            child: Column(
                              children: [
                                Text('Won \nOpportunities',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                    responseModel.data.totalWonOpportunities
                                            .toString() ??
                                        '0',
                                    style: TextStyle(
                                        fontFamily: 'Ubuntu',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black54)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LeadsScreen()),
                          );
                        },
                        child: Card(
                          shadowColor: Colors.blue[600],
                          elevation: 6.0,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Align(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.groups_rounded,
                                          color: Colors.blue[600],
                                          size: 50.0,
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text('Leads',
                                            style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black87)),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.grey[600],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OpportunitiesScreen()),
                          );
                        },
                        child: Card(
                          shadowColor: Colors.blue[600],
                          elevation: 6.0,
                          child: Container(
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.hail_rounded,
                                            color: Colors.blue[600],
                                            size: 50.0,
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text('Opportunities',
                                              style: TextStyle(
                                                  fontFamily: 'Ubuntu',
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black87)),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.arrow_right_alt,
                                        color: Colors.grey[600],
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
