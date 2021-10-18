class MyProjectResponseModel {
  String message;
  String status;
  String validity;
  List<MyProjectsData> data;

  MyProjectResponseModel({this.message, this.status, this.validity, this.data});

  MyProjectResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    validity = json['validity'];
    if (json['data'] != null) {
      data = <MyProjectsData>[];
      json['data'].forEach((v) {
        data.add(new MyProjectsData.fromJson(v));
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

class MyProjectsData {
  String projectId;
  String projectUniqueId;
  String countryUnique;
  String countryUniqueId;
  String projectNo;
  String projectName;
  String companyId;
  String categoryId;
  String clientId;
  String progress;
  String calculateProgress;
  String startDate;
  String endDate;
  String alertOverdue;
  String projectCost;
  String demoUrl;
  String projectStatus;
  String description;
  String notifyClient;
  String timerStatus;
  String timerStartedBy;
  String startTime;
  String loggedTime;
  String permission;
  String notes;
  String createdTime;
  String hourlyRate;
  String fixedRate;
  String projectSettings;
  String withTasks;
  String estimateHours;
  String billingType;
  String tags;
  String projectFilledBy;
  String projectDirector;
  String projectDirectorContactNo;
  String projectDirectorEmail;
  String billingPersonName;
  String billingPersonDesignation;
  String billingPersonContactNo;
  String billingPersonEmail;
  String freequency;
  String projectLocation;
  String engagementLetter;
  String kickMeetingdate;
  String projectvalue;
  String projectDirectorEmpact;
  String engagementManagerEmpact;
  String projectManagerEmpact;
  String startDateEmpact;
  String durationWeeksEmpact;
  String preposalPreparedEmpact;
  String peopleKickEmpact;
  String kickDateEmpact;
  String nominatedPersonEmpact;
  String proposalStatus;
  String proposalDate;
  String leadOriginDate;
  String leadCloseDate;
  String clientContact;
  String clientContact1;
  String clientContact2;
  String contractStatus;
  String consultantName;
  String clientFlexibilityOnProject;
  String projectType;
  String empactLeadOwner;
  String type;
  String enterAmount;
  String currency;
  String stagesOfInvoices;
  String firstInstallment;
  String secondInstallment;
  String thirdInstallment;
  String fourthInstallment;
  String fifthInstallment;
  String sixInstallment;
  String sevenInstallment;
  String eightInstallment;
  String nineInstallment;
  String tenInstallment;
  String elevenInstallment;
  String twelveInstallment;
  String firstInstallmentPercent;
  String secondInstallmentPercent;
  String thirdInstallmentPercent;
  String fourthInstallmentPercent;
  String fifthInstallmentPercent;
  String sixInstallmentPercent;
  String sevenInstallmentPercent;
  String eightInstallmentPercent;
  String nineInstallmentPercent;
  String tenInstallmentPercent;
  String elevenInstallmentPercent;
  String twelveInstallmentPercent;
  String firstInstallmentOwnCurrency;
  String secondInstallmentOwnCurrency;
  String thirdInstallmentOwnCurrency;
  String fourthInstallmentOwnCurrency;
  String fifthInstallmentOwnCurrency;
  String sixInstallmentOwnCurrency;
  String sevenInstallmentOwnCurrency;
  String eightInstallmentOwnCurrency;
  String nineInstallmentOwnCurrency;
  String tenInstallmentOwnCurrency;
  String elevenInstallmentOwnCurrency;
  String twelveInstallmentOwnCurrency;
  String whereasAgrement;
  String durationAgrement;
  String paymentAgrement;
  String stepAgrement;
  String arbitrationAgrement;
  String countryCode;
  String countryCodeBill;
  String consultantsId;
  String vendorId;
  String vendorName;
  String clientName;
  String projectManager;

  MyProjectsData(
      {this.projectId,
      this.projectUniqueId,
      this.countryUnique,
      this.countryUniqueId,
      this.projectNo,
      this.projectName,
      this.companyId,
      this.categoryId,
      this.clientId,
      this.progress,
      this.calculateProgress,
      this.consultantName,
      this.startDate,
      this.endDate,
      this.alertOverdue,
      this.projectCost,
      this.demoUrl,
      this.projectStatus,
      this.description,
      this.notifyClient,
      this.timerStatus,
      this.timerStartedBy,
      this.startTime,
      this.loggedTime,
      this.permission,
      this.notes,
      this.createdTime,
      this.hourlyRate,
      this.fixedRate,
      this.projectSettings,
      this.withTasks,
      this.estimateHours,
      this.billingType,
      this.tags,
      this.projectFilledBy,
      this.projectDirector,
      this.projectDirectorContactNo,
      this.projectDirectorEmail,
      this.billingPersonName,
      this.billingPersonDesignation,
      this.billingPersonContactNo,
      this.billingPersonEmail,
      this.freequency,
      this.projectLocation,
      this.engagementLetter,
      this.kickMeetingdate,
      this.projectvalue,
      this.projectDirectorEmpact,
      this.engagementManagerEmpact,
      this.projectManagerEmpact,
      this.startDateEmpact,
      this.durationWeeksEmpact,
      this.preposalPreparedEmpact,
      this.peopleKickEmpact,
      this.kickDateEmpact,
      this.nominatedPersonEmpact,
      this.proposalStatus,
      this.proposalDate,
      this.leadOriginDate,
      this.leadCloseDate,
      this.clientContact,
      this.clientContact1,
      this.clientContact2,
      this.contractStatus,
      this.clientFlexibilityOnProject,
      this.projectType,
      this.empactLeadOwner,
      this.type,
      this.enterAmount,
      this.currency,
      this.stagesOfInvoices,
      this.firstInstallment,
      this.secondInstallment,
      this.thirdInstallment,
      this.fourthInstallment,
      this.fifthInstallment,
      this.sixInstallment,
      this.sevenInstallment,
      this.eightInstallment,
      this.nineInstallment,
      this.tenInstallment,
      this.elevenInstallment,
      this.twelveInstallment,
      this.firstInstallmentPercent,
      this.secondInstallmentPercent,
      this.thirdInstallmentPercent,
      this.fourthInstallmentPercent,
      this.fifthInstallmentPercent,
      this.sixInstallmentPercent,
      this.sevenInstallmentPercent,
      this.eightInstallmentPercent,
      this.nineInstallmentPercent,
      this.tenInstallmentPercent,
      this.elevenInstallmentPercent,
      this.twelveInstallmentPercent,
      this.firstInstallmentOwnCurrency,
      this.secondInstallmentOwnCurrency,
      this.thirdInstallmentOwnCurrency,
      this.fourthInstallmentOwnCurrency,
      this.fifthInstallmentOwnCurrency,
      this.sixInstallmentOwnCurrency,
      this.sevenInstallmentOwnCurrency,
      this.eightInstallmentOwnCurrency,
      this.nineInstallmentOwnCurrency,
      this.tenInstallmentOwnCurrency,
      this.elevenInstallmentOwnCurrency,
      this.twelveInstallmentOwnCurrency,
      this.whereasAgrement,
      this.durationAgrement,
      this.paymentAgrement,
      this.stepAgrement,
      this.arbitrationAgrement,
      this.countryCode,
      this.countryCodeBill,
      this.consultantsId,
      this.vendorId,
      this.vendorName,
      this.clientName,
      this.projectManager});

  MyProjectsData.fromJson(Map<String, dynamic> json) {
    projectId = json['project_id'];
    projectUniqueId = json['project_unique_id'];
    countryUnique = json['country_unique'];
    countryUniqueId = json['country_unique_id'];
    projectNo = json['project_no'];
    projectName = json['project_name'];
    companyId = json['company_id'];
    categoryId = json['category_id'];
    clientId = json['client_id'];
    consultantName = json['consultant_name'];
    progress = json['progress'];
    calculateProgress = json['calculate_progress'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    alertOverdue = json['alert_overdue'];
    projectCost = json['project_cost'];
    demoUrl = json['demo_url'];
    projectStatus = json['project_status'];
    description = json['description'];
    notifyClient = json['notify_client'];
    timerStatus = json['timer_status'];
    timerStartedBy = json['timer_started_by'];
    startTime = json['start_time'];
    loggedTime = json['logged_time'];
    permission = json['permission'];
    notes = json['notes'];
    createdTime = json['created_time'];
    hourlyRate = json['hourly_rate'];
    fixedRate = json['fixed_rate'];
    projectSettings = json['project_settings'];
    withTasks = json['with_tasks'];
    estimateHours = json['estimate_hours'];
    billingType = json['billing_type'];
    tags = json['tags'];
    projectFilledBy = json['project_filled_by'];
    projectDirector = json['project_director'];
    projectDirectorContactNo = json['project_director_contact_no'];
    projectDirectorEmail = json['project_director_email'];
    billingPersonName = json['billing_person_name'];
    billingPersonDesignation = json['billing_person_designation'];
    billingPersonContactNo = json['billing_person_contact_no'];
    billingPersonEmail = json['billing_person_email'];
    freequency = json['freequency'];
    projectLocation = json['project_location'];
    engagementLetter = json['engagement_letter'];
    kickMeetingdate = json['kick_meetingdate'];
    projectvalue = json['projectvalue'];
    projectDirectorEmpact = json['project_director_empact'];
    engagementManagerEmpact = json['engagement_manager_empact'];
    projectManagerEmpact = json['project_manager_empact'];
    startDateEmpact = json['start_date_empact'];
    durationWeeksEmpact = json['duration_weeks_empact'];
    preposalPreparedEmpact = json['preposal_prepared_empact'];
    peopleKickEmpact = json['people_kick_empact'];
    kickDateEmpact = json['kick_date_empact'];
    nominatedPersonEmpact = json['nominated_person_empact'];
    proposalStatus = json['proposal_status'];
    proposalDate = json['proposal_date'];
    leadOriginDate = json['lead_origin_date'];
    leadCloseDate = json['lead_close_date'];
    clientContact = json['client_contact'];
    clientContact1 = json['client_contact1'];
    clientContact2 = json['client_contact2'];
    contractStatus = json['contract_status'];
    clientFlexibilityOnProject = json['client_flexibility_on_project'];
    projectType = json['project_type'];
    empactLeadOwner = json['empact_lead_owner'];
    type = json['type'];
    enterAmount = json['enter_amount'];
    currency = json['currency'];
    stagesOfInvoices = json['stages_of_invoices'];
    firstInstallment = json['first_installment'];
    secondInstallment = json['second_installment'];
    thirdInstallment = json['third_installment'];
    fourthInstallment = json['fourth_installment'];
    fifthInstallment = json['fifth_installment'];
    sixInstallment = json['six_installment'];
    sevenInstallment = json['seven_installment'];
    eightInstallment = json['eight_installment'];
    nineInstallment = json['nine_installment'];
    tenInstallment = json['ten_installment'];
    elevenInstallment = json['eleven_installment'];
    twelveInstallment = json['twelve_installment'];
    firstInstallmentPercent = json['first_installment_percent'];
    secondInstallmentPercent = json['second_installment_percent'];
    thirdInstallmentPercent = json['third_installment_percent'];
    fourthInstallmentPercent = json['fourth_installment_percent'];
    fifthInstallmentPercent = json['fifth_installment_percent'];
    sixInstallmentPercent = json['six_installment_percent'];
    sevenInstallmentPercent = json['seven_installment_percent'];
    eightInstallmentPercent = json['eight_installment_percent'];
    nineInstallmentPercent = json['nine_installment_percent'];
    tenInstallmentPercent = json['ten_installment_percent'];
    elevenInstallmentPercent = json['eleven_installment_percent'];
    twelveInstallmentPercent = json['twelve_installment_percent'];
    firstInstallmentOwnCurrency = json['first_installment_own_currency'];
    secondInstallmentOwnCurrency = json['second_installment_own_currency'];
    thirdInstallmentOwnCurrency = json['third_installment_own_currency'];
    fourthInstallmentOwnCurrency = json['fourth_installment_own_currency'];
    fifthInstallmentOwnCurrency = json['fifth_installment_own_currency'];
    sixInstallmentOwnCurrency = json['six_installment_own_currency'];
    sevenInstallmentOwnCurrency = json['seven_installment_own_currency'];
    eightInstallmentOwnCurrency = json['eight_installment_own_currency'];
    nineInstallmentOwnCurrency = json['nine_installment_own_currency'];
    tenInstallmentOwnCurrency = json['ten_installment_own_currency'];
    elevenInstallmentOwnCurrency = json['eleven_installment_own_currency'];
    twelveInstallmentOwnCurrency = json['twelve_installment_own_currency'];
    whereasAgrement = json['whereas_agrement'];
    durationAgrement = json['duration_agrement'];
    paymentAgrement = json['payment_agrement'];
    stepAgrement = json['step_agrement'];
    arbitrationAgrement = json['arbitration_agrement'];
    countryCode = json['country_code'];
    countryCodeBill = json['country_code_bill'];
    consultantsId = json['consultants_id'];
    vendorId = json['vendor_id'];
    vendorName = json['vendor_name'];
    clientName = json['client_name'];
    projectManager = json['project_manager'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['project_id'] = this.projectId;
    data['project_unique_id'] = this.projectUniqueId;
    data['country_unique'] = this.countryUnique;
    data['country_unique_id'] = this.countryUniqueId;
    data['project_no'] = this.projectNo;
    data['project_name'] = this.projectName;
    data['company_id'] = this.companyId;
    data['category_id'] = this.categoryId;
    data['client_id'] = this.clientId;
    data['progress'] = this.progress;
    data['calculate_progress'] = this.calculateProgress;
    data['consultant_name'] = this.consultantName;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['alert_overdue'] = this.alertOverdue;
    data['project_cost'] = this.projectCost;
    data['demo_url'] = this.demoUrl;
    data['project_status'] = this.projectStatus;
    data['description'] = this.description;
    data['notify_client'] = this.notifyClient;
    data['timer_status'] = this.timerStatus;
    data['timer_started_by'] = this.timerStartedBy;
    data['start_time'] = this.startTime;
    data['logged_time'] = this.loggedTime;
    data['permission'] = this.permission;
    data['notes'] = this.notes;
    data['created_time'] = this.createdTime;
    data['hourly_rate'] = this.hourlyRate;
    data['fixed_rate'] = this.fixedRate;
    data['project_settings'] = this.projectSettings;
    data['with_tasks'] = this.withTasks;
    data['estimate_hours'] = this.estimateHours;
    data['billing_type'] = this.billingType;
    data['tags'] = this.tags;
    data['project_filled_by'] = this.projectFilledBy;
    data['project_director'] = this.projectDirector;
    data['project_director_contact_no'] = this.projectDirectorContactNo;
    data['project_director_email'] = this.projectDirectorEmail;
    data['billing_person_name'] = this.billingPersonName;
    data['billing_person_designation'] = this.billingPersonDesignation;
    data['billing_person_contact_no'] = this.billingPersonContactNo;
    data['billing_person_email'] = this.billingPersonEmail;
    data['freequency'] = this.freequency;
    data['project_location'] = this.projectLocation;
    data['engagement_letter'] = this.engagementLetter;
    data['kick_meetingdate'] = this.kickMeetingdate;
    data['projectvalue'] = this.projectvalue;
    data['project_director_empact'] = this.projectDirectorEmpact;
    data['engagement_manager_empact'] = this.engagementManagerEmpact;
    data['project_manager_empact'] = this.projectManagerEmpact;
    data['start_date_empact'] = this.startDateEmpact;
    data['duration_weeks_empact'] = this.durationWeeksEmpact;
    data['preposal_prepared_empact'] = this.preposalPreparedEmpact;
    data['people_kick_empact'] = this.peopleKickEmpact;
    data['kick_date_empact'] = this.kickDateEmpact;
    data['nominated_person_empact'] = this.nominatedPersonEmpact;
    data['proposal_status'] = this.proposalStatus;
    data['proposal_date'] = this.proposalDate;
    data['lead_origin_date'] = this.leadOriginDate;
    data['lead_close_date'] = this.leadCloseDate;
    data['client_contact'] = this.clientContact;
    data['client_contact1'] = this.clientContact1;
    data['client_contact2'] = this.clientContact2;
    data['contract_status'] = this.contractStatus;
    data['client_flexibility_on_project'] = this.clientFlexibilityOnProject;
    data['project_type'] = this.projectType;
    data['empact_lead_owner'] = this.empactLeadOwner;
    data['type'] = this.type;
    data['enter_amount'] = this.enterAmount;
    data['currency'] = this.currency;
    data['stages_of_invoices'] = this.stagesOfInvoices;
    data['first_installment'] = this.firstInstallment;
    data['second_installment'] = this.secondInstallment;
    data['third_installment'] = this.thirdInstallment;
    data['fourth_installment'] = this.fourthInstallment;
    data['fifth_installment'] = this.fifthInstallment;
    data['six_installment'] = this.sixInstallment;
    data['seven_installment'] = this.sevenInstallment;
    data['eight_installment'] = this.eightInstallment;
    data['nine_installment'] = this.nineInstallment;
    data['ten_installment'] = this.tenInstallment;
    data['eleven_installment'] = this.elevenInstallment;
    data['twelve_installment'] = this.twelveInstallment;
    data['first_installment_percent'] = this.firstInstallmentPercent;
    data['second_installment_percent'] = this.secondInstallmentPercent;
    data['third_installment_percent'] = this.thirdInstallmentPercent;
    data['fourth_installment_percent'] = this.fourthInstallmentPercent;
    data['fifth_installment_percent'] = this.fifthInstallmentPercent;
    data['six_installment_percent'] = this.sixInstallmentPercent;
    data['seven_installment_percent'] = this.sevenInstallmentPercent;
    data['eight_installment_percent'] = this.eightInstallmentPercent;
    data['nine_installment_percent'] = this.nineInstallmentPercent;
    data['ten_installment_percent'] = this.tenInstallmentPercent;
    data['eleven_installment_percent'] = this.elevenInstallmentPercent;
    data['twelve_installment_percent'] = this.twelveInstallmentPercent;
    data['first_installment_own_currency'] = this.firstInstallmentOwnCurrency;
    data['second_installment_own_currency'] = this.secondInstallmentOwnCurrency;
    data['third_installment_own_currency'] = this.thirdInstallmentOwnCurrency;
    data['fourth_installment_own_currency'] = this.fourthInstallmentOwnCurrency;
    data['fifth_installment_own_currency'] = this.fifthInstallmentOwnCurrency;
    data['six_installment_own_currency'] = this.sixInstallmentOwnCurrency;
    data['seven_installment_own_currency'] = this.sevenInstallmentOwnCurrency;
    data['eight_installment_own_currency'] = this.eightInstallmentOwnCurrency;
    data['nine_installment_own_currency'] = this.nineInstallmentOwnCurrency;
    data['ten_installment_own_currency'] = this.tenInstallmentOwnCurrency;
    data['eleven_installment_own_currency'] = this.elevenInstallmentOwnCurrency;
    data['twelve_installment_own_currency'] = this.twelveInstallmentOwnCurrency;
    data['whereas_agrement'] = this.whereasAgrement;
    data['duration_agrement'] = this.durationAgrement;
    data['payment_agrement'] = this.paymentAgrement;
    data['step_agrement'] = this.stepAgrement;
    data['arbitration_agrement'] = this.arbitrationAgrement;
    data['country_code'] = this.countryCode;
    data['country_code_bill'] = this.countryCodeBill;
    data['consultants_id'] = this.consultantsId;
    data['vendor_id'] = this.vendorId;
    data['vendor_name'] = this.vendorName;
    data['client_name'] = this.clientName;
    data['project_manager'] = this.projectManager;
    return data;
  }
}
