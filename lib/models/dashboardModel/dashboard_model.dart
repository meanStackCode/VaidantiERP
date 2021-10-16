class DashBoardModel {
  String message;
  String status;
  String validity;
  Data data;

  DashBoardModel({this.message, this.status, this.validity, this.data});

  DashBoardModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    validity = json['validity'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    data['validity'] = this.validity;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  String totalIncome;
  String todayIncome;
  String totalExpense;
  String todayExpense;
  String dueAmount;
  String totalInvoiceAmount;
  String paidInvoiceToday;
  String paidAmount;
  String paymentToday;
  int tasksInProgress;
  int ticketsOpen;
  int bugsInProgress;
  int projectInProgress;
  int completedProjects;
  int completedTasks;
  int totalEstimateAmount;
  int totalResolvedBugs;
  int totalWonOpportunities;

  Data(
      {this.totalIncome,
      this.todayIncome,
      this.totalExpense,
      this.todayExpense,
      this.dueAmount,
      this.totalInvoiceAmount,
      this.paidInvoiceToday,
      this.paidAmount,
      this.paymentToday,
      this.tasksInProgress,
      this.ticketsOpen,
      this.bugsInProgress,
      this.projectInProgress,
      this.completedProjects,
      this.completedTasks,
      this.totalEstimateAmount,
      this.totalResolvedBugs,
      this.totalWonOpportunities});

  Data.fromJson(Map<String, dynamic> json) {
    totalIncome = json['Total_income'];
    todayIncome = json['Today_income'];
    totalExpense = json['Total_expense'];
    todayExpense = json['Today_expense'];
    dueAmount = json['Due_Amount'];
    totalInvoiceAmount = json['Total_invoice_Amount'];
    paidInvoiceToday = json['Paid_invoice_today'];
    paidAmount = json['Paid_amount'];
    paymentToday = json['Payment_today'];
    tasksInProgress = json['Tasks_in_progress'];
    ticketsOpen = json['Tickets_open'];
    bugsInProgress = json['Bugs_in_progress'];
    projectInProgress = json['Project_in_progress'];
    completedProjects = json['Completed_projects'];
    completedTasks = json['Completed_tasks'];
    totalEstimateAmount = json['Total_estimate_amount'];
    totalResolvedBugs = json['Total_resolved_bugs'];
    totalWonOpportunities = json['Total_won_opportunities'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total_income'] = this.totalIncome;
    data['Today_income'] = this.todayIncome;
    data['Total_expense'] = this.totalExpense;
    data['Today_expense'] = this.todayExpense;
    data['Due_Amount'] = this.dueAmount;
    data['Total_invoice_Amount'] = this.totalInvoiceAmount;
    data['Paid_invoice_today'] = this.paidInvoiceToday;
    data['Paid_amount'] = this.paidAmount;
    data['Payment_today'] = this.paymentToday;
    data['Tasks_in_progress'] = this.tasksInProgress;
    data['Tickets_open'] = this.ticketsOpen;
    data['Bugs_in_progress'] = this.bugsInProgress;
    data['Project_in_progress'] = this.projectInProgress;
    data['Completed_projects'] = this.completedProjects;
    data['Completed_tasks'] = this.completedTasks;
    data['Total_estimate_amount'] = this.totalEstimateAmount;
    data['Total_resolved_bugs'] = this.totalResolvedBugs;
    data['Total_won_opportunities'] = this.totalWonOpportunities;
    return data;
  }
}