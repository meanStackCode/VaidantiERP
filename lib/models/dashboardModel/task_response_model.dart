class TaskListResponseModel {
  String message;
  String status;
  String validity;
  List<TaskData> data;

  TaskListResponseModel({this.message, this.status, this.validity, this.data});

  TaskListResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    validity = json['validity'];
    if (json['data'] != null) {
      data = <TaskData>[];
      json['data'].forEach((v) {
        data.add(new TaskData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    data['validity'] = this.validity;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TaskData {
  String taskId;
  String projectId;
  String milestonesId;
  String opportunitiesId;
  String goalTrackingId;
  String subTaskId;
  String transactionsId;
  String categoryId;
  String taskName;
  String taskDescription;
  String taskStartDate;
  String dueDate;
  String taskCreatedDate;
  String taskStatus;
  String taskProgress;
  String calculateProgress;
  String taskHour;
  String tasksNotes;
  String timerStatus;
  String timerStartedBy;
  String startTime;
  String loggedTime;
  String leadsId;
  String bugId;
  String createdBy;
  String permission;
  String clientVisible;
  String customDate;
  String hourlyRate;
  String billable;
  String indexNo;
  String tags;
  String customerGroup;

  TaskData(
      {this.taskId,
      this.projectId,
      this.milestonesId,
      this.opportunitiesId,
      this.goalTrackingId,
      this.subTaskId,
      this.transactionsId,
      this.categoryId,
      this.taskName,
      this.taskDescription,
      this.taskStartDate,
      this.dueDate,
      this.taskCreatedDate,
      this.taskStatus,
      this.taskProgress,
      this.calculateProgress,
      this.taskHour,
      this.tasksNotes,
      this.timerStatus,
      this.timerStartedBy,
      this.startTime,
      this.loggedTime,
      this.leadsId,
      this.bugId,
      this.createdBy,
      this.permission,
      this.clientVisible,
      this.customDate,
      this.hourlyRate,
      this.billable,
      this.indexNo,
      this.tags,
      this.customerGroup});

  TaskData.fromJson(Map<String, dynamic> json) {
    taskId = json['task_id'];
    projectId = json['project_id'];
    milestonesId = json['milestones_id'];
    opportunitiesId = json['opportunities_id'];
    goalTrackingId = json['goal_tracking_id'];
    subTaskId = json['sub_task_id'];
    transactionsId = json['transactions_id'];
    categoryId = json['category_id'];
    taskName = json['task_name'];
    taskDescription = json['task_description'];
    taskStartDate = json['task_start_date'];
    dueDate = json['due_date'];
    taskCreatedDate = json['task_created_date'];
    taskStatus = json['task_status'];
    taskProgress = json['task_progress'];
    calculateProgress = json['calculate_progress'];
    taskHour = json['task_hour'];
    tasksNotes = json['tasks_notes'];
    timerStatus = json['timer_status'];
    timerStartedBy = json['timer_started_by'];
    startTime = json['start_time'];
    loggedTime = json['logged_time'];
    leadsId = json['leads_id'];
    bugId = json['bug_id'];
    createdBy = json['created_by'];
    permission = json['permission'];
    clientVisible = json['client_visible'];
    customDate = json['custom_date'];
    hourlyRate = json['hourly_rate'];
    billable = json['billable'];
    indexNo = json['index_no'];
    tags = json['tags'];
    customerGroup = json['customer_group'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['task_id'] = this.taskId;
    data['project_id'] = this.projectId;
    data['milestones_id'] = this.milestonesId;
    data['opportunities_id'] = this.opportunitiesId;
    data['goal_tracking_id'] = this.goalTrackingId;
    data['sub_task_id'] = this.subTaskId;
    data['transactions_id'] = this.transactionsId;
    data['category_id'] = this.categoryId;
    data['task_name'] = this.taskName;
    data['task_description'] = this.taskDescription;
    data['task_start_date'] = this.taskStartDate;
    data['due_date'] = this.dueDate;
    data['task_created_date'] = this.taskCreatedDate;
    data['task_status'] = this.taskStatus;
    data['task_progress'] = this.taskProgress;
    data['calculate_progress'] = this.calculateProgress;
    data['task_hour'] = this.taskHour;
    data['tasks_notes'] = this.tasksNotes;
    data['timer_status'] = this.timerStatus;
    data['timer_started_by'] = this.timerStartedBy;
    data['start_time'] = this.startTime;
    data['logged_time'] = this.loggedTime;
    data['leads_id'] = this.leadsId;
    data['bug_id'] = this.bugId;
    data['created_by'] = this.createdBy;
    data['permission'] = this.permission;
    data['client_visible'] = this.clientVisible;
    data['custom_date'] = this.customDate;
    data['hourly_rate'] = this.hourlyRate;
    data['billable'] = this.billable;
    data['index_no'] = this.indexNo;
    data['tags'] = this.tags;
    data['customer_group'] = this.customerGroup;
    return data;
  }
}