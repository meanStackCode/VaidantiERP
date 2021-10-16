class OpportunitiesResponseModel {
  String message;
  String status;
  String validity;
  List<OpportunitiesData> data;

  OpportunitiesResponseModel(
      {this.message, this.status, this.validity, this.data});

  OpportunitiesResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    validity = json['validity'];
    if (json['data'] != null) {
      data = <OpportunitiesData>[];
      json['data'].forEach((v) {
        data.add(new OpportunitiesData.fromJson(v));
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

class OpportunitiesData {
  String opportunitiesId;
  String opportunitiesUniqueId;
  String countryUnique;
  String countryUniqueId;
  String clientId;
  String projectId;
  String opportunityName;
  String stages;
  String probability;
  String closeDate;
  String opportunitiesStateReasonId;
  String expectedRevenue;
  String newLink;
  String nextAction;
  String nextActionDate;
  String notes;
  String permission;
  String clientName;
  String projectType;
  String projectScope;
  String probabilityWinning;
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
  String tentativeProjectStartDate;
  String tentativeProjectEndDate;
  String tentativeDuration;
  String clientFlexibilityOnProject;
  String currency;
  String country;
  String enterAmount;
  String type;
  String projectLocation;
  String companyId;
  String projectCompany;
  String projectManager;

  OpportunitiesData(
      {this.opportunitiesId,
      this.opportunitiesUniqueId,
      this.countryUnique,
      this.countryUniqueId,
      this.clientId,
      this.projectId,
      this.opportunityName,
      this.stages,
      this.probability,
      this.closeDate,
      this.opportunitiesStateReasonId,
      this.expectedRevenue,
      this.newLink,
      this.nextAction,
      this.nextActionDate,
      this.notes,
      this.permission,
      this.clientName,
      this.projectType,
      this.projectScope,
      this.probabilityWinning,
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
      this.tentativeProjectStartDate,
      this.tentativeProjectEndDate,
      this.tentativeDuration,
      this.clientFlexibilityOnProject,
      this.currency,
      this.country,
      this.enterAmount,
      this.type,
      this.projectLocation,
      this.companyId,
      this.projectCompany,
      this.projectManager});

  OpportunitiesData.fromJson(Map<String, dynamic> json) {
    opportunitiesId = json['opportunities_id'];
    opportunitiesUniqueId = json['opportunities_unique_id'];
    countryUnique = json['country_unique'];
    countryUniqueId = json['country_unique_id'];
    clientId = json['client_id'];
    projectId = json['project_id'];
    opportunityName = json['opportunity_name'];
    stages = json['stages'];
    probability = json['probability'];
    closeDate = json['close_date'];
    opportunitiesStateReasonId = json['opportunities_state_reason_id'];
    expectedRevenue = json['expected_revenue'];
    newLink = json['new_link'];
    nextAction = json['next_action'];
    nextActionDate = json['next_action_date'];
    notes = json['notes'];
    permission = json['permission'];
    clientName = json['client_name'];
    projectType = json['project_type'];
    projectScope = json['project_scope'];
    probabilityWinning = json['probability_winning'];
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
    tentativeProjectStartDate = json['tentative_project_start_date'];
    tentativeProjectEndDate = json['tentative_project_end_date'];
    tentativeDuration = json['tentative_duration'];
    clientFlexibilityOnProject = json['client_flexibility_on_project'];
    currency = json['currency'];
    country = json['country'];
    enterAmount = json['enter_amount'];
    type = json['type'];
    projectLocation = json['project_location'];
    companyId = json['company_id'];
    projectCompany = json['project_company'];
    projectManager = json['project_manager'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['opportunities_id'] = this.opportunitiesId;
    data['opportunities_unique_id'] = this.opportunitiesUniqueId;
    data['country_unique'] = this.countryUnique;
    data['country_unique_id'] = this.countryUniqueId;
    data['client_id'] = this.clientId;
    data['project_id'] = this.projectId;
    data['opportunity_name'] = this.opportunityName;
    data['stages'] = this.stages;
    data['probability'] = this.probability;
    data['close_date'] = this.closeDate;
    data['opportunities_state_reason_id'] = this.opportunitiesStateReasonId;
    data['expected_revenue'] = this.expectedRevenue;
    data['new_link'] = this.newLink;
    data['next_action'] = this.nextAction;
    data['next_action_date'] = this.nextActionDate;
    data['notes'] = this.notes;
    data['permission'] = this.permission;
    data['client_name'] = this.clientName;
    data['project_type'] = this.projectType;
    data['project_scope'] = this.projectScope;
    data['probability_winning'] = this.probabilityWinning;
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
    data['tentative_project_start_date'] = this.tentativeProjectStartDate;
    data['tentative_project_end_date'] = this.tentativeProjectEndDate;
    data['tentative_duration'] = this.tentativeDuration;
    data['client_flexibility_on_project'] = this.clientFlexibilityOnProject;
    data['currency'] = this.currency;
    data['country'] = this.country;
    data['enter_amount'] = this.enterAmount;
    data['type'] = this.type;
    data['project_location'] = this.projectLocation;
    data['company_id'] = this.companyId;
    data['project_company'] = this.projectCompany;
    data['project_manager'] = this.projectManager;
    return data;
  }
}
