class LeadsResponseModel {
  String message;
  String status;
  String validity;
  List<LeadsData> data;

  LeadsResponseModel({this.message, this.status, this.validity, this.data});

  LeadsResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    validity = json['validity'];
    if (json['data'] != null) {
      data = <LeadsData>[];
      json['data'].forEach((v) {
        data.add(new LeadsData.fromJson(v));
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

class LeadsData {
  String leadsId;
  String leadsUniqueId;
  String leadName;
  String clientId;
  String organization;
  String leadStatusId;
  String leadSourceId;
  String importedFromEmail;
  String emailIntegrationUid;
  String companyName;
  String address;
  String country;
  String state;
  String city;
  String contactName;
  String title;
  String email;
  String phone;
  String mobile;
  String facebook;
  String language;
  String notes;
  String createdTime;
  String lastContact;
  String skype;
  String twitter;
  String permission;
  String convertedClientId;
  String indexNo;
  String tags;
  String fromFormId;
  String projectType;
  String projectScope;
  String empactLeadOwner;
  String leadOriginDate;
  String leadCloseDate;
  String leadActivityStatus;
  String leadStatus;
  String leadAging;
  String clientContact;
  String contractingStatus;
  String proposalDate;
  String proposalDevelopBy;
  String proposalStatus;
  String opportunityName;
  String tentativeProjectStartDate;
  String tentativeProjectEndDate;
  String tentativeDuration;
  String clientFlexibilityOnProject;
  String currency;
  String enterAmount;
  String expectedRevenue;
  String newLink;
  String newActionDate;
  String newAction;
  String projectLocation;
  String countryUniqueId;
  String countryUnique;
  String companyId;
  String leadCheckUnique;
  String proposalTechinal;
  String proposalCommercial;
  String projectCompany;
  String clientName;

  LeadsData(
      {this.leadsId,
      this.leadsUniqueId,
      this.leadName,
      this.clientId,
      this.organization,
      this.leadStatusId,
      this.leadSourceId,
      this.importedFromEmail,
      this.emailIntegrationUid,
      this.companyName,
      this.address,
      this.country,
      this.state,
      this.city,
      this.contactName,
      this.title,
      this.email,
      this.phone,
      this.mobile,
      this.facebook,
      this.language,
      this.notes,
      this.createdTime,
      this.lastContact,
      this.skype,
      this.twitter,
      this.permission,
      this.convertedClientId,
      this.indexNo,
      this.tags,
      this.fromFormId,
      this.projectType,
      this.projectScope,
      this.empactLeadOwner,
      this.leadOriginDate,
      this.leadCloseDate,
      this.leadActivityStatus,
      this.leadStatus,
      this.leadAging,
      this.clientContact,
      this.contractingStatus,
      this.proposalDate,
      this.proposalDevelopBy,
      this.proposalStatus,
      this.opportunityName,
      this.tentativeProjectStartDate,
      this.tentativeProjectEndDate,
      this.tentativeDuration,
      this.clientFlexibilityOnProject,
      this.currency,
      this.enterAmount,
      this.expectedRevenue,
      this.newLink,
      this.newActionDate,
      this.newAction,
      this.projectLocation,
      this.countryUniqueId,
      this.countryUnique,
      this.companyId,
      this.leadCheckUnique,
      this.proposalTechinal,
      this.proposalCommercial,
      this.projectCompany,
      this.clientName});

  LeadsData.fromJson(Map<String, dynamic> json) {
    leadsId = json['leads_id'];
    leadsUniqueId = json['leads_unique_id'];
    leadName = json['lead_name'];
    clientId = json['client_id'];
    organization = json['organization'];
    leadStatusId = json['lead_status_id'];
    leadSourceId = json['lead_source_id'];
    importedFromEmail = json['imported_from_email'];
    emailIntegrationUid = json['email_integration_uid'];
    companyName = json['company_name'];
    address = json['address'];
    country = json['country'];
    state = json['state'];
    city = json['city'];
    contactName = json['contact_name'];
    title = json['title'];
    email = json['email'];
    phone = json['phone'];
    mobile = json['mobile'];
    facebook = json['facebook'];
    language = json['language'];
    notes = json['notes'];
    createdTime = json['created_time'];
    lastContact = json['last_contact'];
    skype = json['skype'];
    twitter = json['twitter'];
    permission = json['permission'];
    convertedClientId = json['converted_client_id'];
    indexNo = json['index_no'];
    tags = json['tags'];
    fromFormId = json['from_form_id'];
    projectType = json['project_type'];
    projectScope = json['project_scope'];
    empactLeadOwner = json['empact_lead_owner'];
    leadOriginDate = json['lead_origin_date'];
    leadCloseDate = json['lead_close_date'];
    leadActivityStatus = json['lead_activity_status'];
    leadStatus = json['lead_status'];
    leadAging = json['lead_aging'];
    clientContact = json['client_contact'];
    contractingStatus = json['contracting_status'];
    proposalDate = json['proposal_date'];
    proposalDevelopBy = json['proposal_develop_by'];
    proposalStatus = json['proposal_status'];
    opportunityName = json['opportunity_name'];
    tentativeProjectStartDate = json['tentative_project_start_date'];
    tentativeProjectEndDate = json['tentative_project_end_date'];
    tentativeDuration = json['tentative_duration'];
    clientFlexibilityOnProject = json['client_flexibility_on_project'];
    currency = json['currency'];
    enterAmount = json['enter_amount'];
    expectedRevenue = json['expected_revenue'];
    newLink = json['new_link'];
    newActionDate = json['new_action_date'];
    newAction = json['new_action'];
    projectLocation = json['project_location'];
    countryUniqueId = json['country_unique_id'];
    countryUnique = json['country_unique'];
    companyId = json['company_id'];
    leadCheckUnique = json['lead_check_unique'];
    proposalTechinal = json['proposal_techinal'];
    proposalCommercial = json['proposal_commercial'];
    projectCompany = json['project_company'];
    clientName = json['client_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['leads_id'] = this.leadsId;
    data['leads_unique_id'] = this.leadsUniqueId;
    data['lead_name'] = this.leadName;
    data['client_id'] = this.clientId;
    data['organization'] = this.organization;
    data['lead_status_id'] = this.leadStatusId;
    data['lead_source_id'] = this.leadSourceId;
    data['imported_from_email'] = this.importedFromEmail;
    data['email_integration_uid'] = this.emailIntegrationUid;
    data['company_name'] = this.companyName;
    data['address'] = this.address;
    data['country'] = this.country;
    data['state'] = this.state;
    data['city'] = this.city;
    data['contact_name'] = this.contactName;
    data['title'] = this.title;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['mobile'] = this.mobile;
    data['facebook'] = this.facebook;
    data['language'] = this.language;
    data['notes'] = this.notes;
    data['created_time'] = this.createdTime;
    data['last_contact'] = this.lastContact;
    data['skype'] = this.skype;
    data['twitter'] = this.twitter;
    data['permission'] = this.permission;
    data['converted_client_id'] = this.convertedClientId;
    data['index_no'] = this.indexNo;
    data['tags'] = this.tags;
    data['from_form_id'] = this.fromFormId;
    data['project_type'] = this.projectType;
    data['project_scope'] = this.projectScope;
    data['empact_lead_owner'] = this.empactLeadOwner;
    data['lead_origin_date'] = this.leadOriginDate;
    data['lead_close_date'] = this.leadCloseDate;
    data['lead_activity_status'] = this.leadActivityStatus;
    data['lead_status'] = this.leadStatus;
    data['lead_aging'] = this.leadAging;
    data['client_contact'] = this.clientContact;
    data['contracting_status'] = this.contractingStatus;
    data['proposal_date'] = this.proposalDate;
    data['proposal_develop_by'] = this.proposalDevelopBy;
    data['proposal_status'] = this.proposalStatus;
    data['opportunity_name'] = this.opportunityName;
    data['tentative_project_start_date'] = this.tentativeProjectStartDate;
    data['tentative_project_end_date'] = this.tentativeProjectEndDate;
    data['tentative_duration'] = this.tentativeDuration;
    data['client_flexibility_on_project'] = this.clientFlexibilityOnProject;
    data['currency'] = this.currency;
    data['enter_amount'] = this.enterAmount;
    data['expected_revenue'] = this.expectedRevenue;
    data['new_link'] = this.newLink;
    data['new_action_date'] = this.newActionDate;
    data['new_action'] = this.newAction;
    data['project_location'] = this.projectLocation;
    data['country_unique_id'] = this.countryUniqueId;
    data['country_unique'] = this.countryUnique;
    data['company_id'] = this.companyId;
    data['lead_check_unique'] = this.leadCheckUnique;
    data['proposal_techinal'] = this.proposalTechinal;
    data['proposal_commercial'] = this.proposalCommercial;
    data['project_company'] = this.projectCompany;
    data['client_name'] = this.clientName;
    return data;
  }
}
