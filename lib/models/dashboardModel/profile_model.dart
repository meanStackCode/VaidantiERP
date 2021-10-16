class ProfileModelResponse {
  String message;
  String status;
  String validity;
  ProfileData data;

  ProfileModelResponse({this.message, this.status, this.validity, this.data});

  ProfileModelResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    validity = json['validity'];
    data = json['data'] != null ? new ProfileData.fromJson(json['data']) : null;
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

class ProfileData {
  About about;
  WorkProfile workProfile;
  Address address;
  Contact contact;
  Identity identity;
  ImportedDate importedDate;
  BankInfoDetail bankInfo;
  FamilyDependents familyDependents;
  Medical medical;
  DocumentInfo documentInfo;

  ProfileData(
      {this.about,
      this.workProfile,
      this.address,
      this.contact,
      this.identity,
      this.importedDate,
      this.bankInfo,
      this.familyDependents,
      this.medical,
      this.documentInfo});

  ProfileData.fromJson(Map<String, dynamic> json) {
    about = json['about'] != null ? new About.fromJson(json['about']) : null;
    workProfile = json['work_profile'] != null
        ? new WorkProfile.fromJson(json['work_profile'])
        : null;
    address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
    contact =
        json['contact'] != null ? new Contact.fromJson(json['contact']) : null;
    identity = json['identity'] != null
        ? new Identity.fromJson(json['identity'])
        : null;
    importedDate = json['imported_date'] != null
        ? new ImportedDate.fromJson(json['imported_date'])
        : null;
    bankInfo = json['bank_info'] != null
        ? new BankInfoDetail.fromJson(json['bank_info'])
        : null;
    familyDependents = json['family_dependents'] != null
        ? new FamilyDependents.fromJson(json['family_dependents'])
        : null;
    medical =
        json['medical'] != null ? new Medical.fromJson(json['medical']) : null;
    documentInfo = json['document_info'] != null
        ? new DocumentInfo.fromJson(json['document_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.about != null) {
      data['about'] = this.about.toJson();
    }
    if (this.workProfile != null) {
      data['work_profile'] = this.workProfile.toJson();
    }
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    if (this.contact != null) {
      data['contact'] = this.contact.toJson();
    }
    if (this.identity != null) {
      data['identity'] = this.identity.toJson();
    }
    if (this.importedDate != null) {
      data['imported_date'] = this.importedDate.toJson();
    }
    if (this.bankInfo != null) {
      data['bank_info'] = this.bankInfo.toJson();
    }
    if (this.familyDependents != null) {
      data['family_dependents'] = this.familyDependents.toJson();
    }
    if (this.medical != null) {
      data['medical'] = this.medical.toJson();
    }
    if (this.documentInfo != null) {
      data['document_info'] = this.documentInfo.toJson();
    }
    return data;
  }
}

class About {
  String fullname;
  String middleName;
  String lastName;
  String nationality;
  String country;
  String companyname;
  String employeeId;
  String username;
  String gender;
  String personalEmail;
  String maritalStatus;
  String fatherName;
  String motherName;
  String religion;

  About(
      {this.fullname,
      this.middleName,
      this.lastName,
      this.nationality,
      this.country,
      this.companyname,
      this.employeeId,
      this.username,
      this.gender,
      this.personalEmail,
      this.maritalStatus,
      this.fatherName,
      this.motherName,
      this.religion});

  About.fromJson(Map<String, dynamic> json) {
    fullname = json['fullname'];
    middleName = json['middle_name'];
    lastName = json['last_name'];
    nationality = json['nationality'];
    country = json['country'];
    companyname = json['companyname'];
    employeeId = json['employee_id'];
    username = json['username'];
    gender = json['gender'];
    personalEmail = json['personal_email'];
    maritalStatus = json['marital_status'];
    fatherName = json['father_name'];
    motherName = json['mother_name'];
    religion = json['religion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullname'] = this.fullname;
    data['middle_name'] = this.middleName;
    data['last_name'] = this.lastName;
    data['nationality'] = this.nationality;
    data['country'] = this.country;
    data['companyname'] = this.companyname;
    data['employee_id'] = this.employeeId;
    data['username'] = this.username;
    data['gender'] = this.gender;
    data['personal_email'] = this.personalEmail;
    data['marital_status'] = this.maritalStatus;
    data['father_name'] = this.fatherName;
    data['mother_name'] = this.motherName;
    data['religion'] = this.religion;
    return data;
  }
}

class WorkProfile {
  String employeeId;
  String officialEmail;
  String joiningDate;
  String employmentStage;
  String employmentType;
  String employmentGrade;
  String probationEndDate;
  String noticeStartDate;
  String noticeEndDate;

  WorkProfile(
      {this.employeeId,
      this.officialEmail,
      this.joiningDate,
      this.employmentStage,
      this.employmentType,
      this.employmentGrade,
      this.probationEndDate,
      this.noticeStartDate,
      this.noticeEndDate});

  WorkProfile.fromJson(Map<String, dynamic> json) {
    employeeId = json['employee_id'];
    officialEmail = json['official_email'];
    joiningDate = json['joining_date'];
    employmentStage = json['employment_stage'];
    employmentType = json['employment_type'];
    employmentGrade = json['employment_grade'];
    probationEndDate = json['probation_end_date'];
    noticeStartDate = json['notice_start_date'];
    noticeEndDate = json['notice_end_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employee_id'] = this.employeeId;
    data['official_email'] = this.officialEmail;
    data['joining_date'] = this.joiningDate;
    data['employment_stage'] = this.employmentStage;
    data['employment_type'] = this.employmentType;
    data['employment_grade'] = this.employmentGrade;
    data['probation_end_date'] = this.probationEndDate;
    data['notice_start_date'] = this.noticeStartDate;
    data['notice_end_date'] = this.noticeEndDate;
    return data;
  }
}

class Address {
  String presentAddress;
  String permanentAddress;

  Address({this.presentAddress, this.permanentAddress});

  Address.fromJson(Map<String, dynamic> json) {
    presentAddress = json['present_address'];
    permanentAddress = json['permanent_address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['present_address'] = this.presentAddress;
    data['permanent_address'] = this.permanentAddress;
    return data;
  }
}

class Contact {
  String personalemail;
  String phone;
  String mobile;
  String skype;

  Contact({this.personalemail, this.phone, this.mobile, this.skype});

  Contact.fromJson(Map<String, dynamic> json) {
    personalemail = json['personalemail'];
    phone = json['phone'];
    mobile = json['mobile'];
    skype = json['skype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['personalemail'] = this.personalemail;
    data['phone'] = this.phone;
    data['mobile'] = this.mobile;
    data['skype'] = this.skype;
    return data;
  }
}

class Identity {
  String passport;
  String cprNo;
  String cprIssueDate;
  String cprExpiryDate;
  String passportIssueDate;
  String passportExpiryDate;

  Identity(
      {this.passport,
      this.cprNo,
      this.cprIssueDate,
      this.cprExpiryDate,
      this.passportIssueDate,
      this.passportExpiryDate});

  Identity.fromJson(Map<String, dynamic> json) {
    passport = json['passport'];
    cprNo = json['cpr_no'];
    cprIssueDate = json['cpr_issue_date'];
    cprExpiryDate = json['cpr_expiry_date'];
    passportIssueDate = json['passport_issue_date'];
    passportExpiryDate = json['passport_expiry_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['passport'] = this.passport;
    data['cpr_no'] = this.cprNo;
    data['cpr_issue_date'] = this.cprIssueDate;
    data['cpr_expiry_date'] = this.cprExpiryDate;
    data['passport_issue_date'] = this.passportIssueDate;
    data['passport_expiry_date'] = this.passportExpiryDate;
    return data;
  }
}

class ImportedDate {
  String dateOfBirth;
  String joiningDate;
  String partnerDate;
  String marriageAnniversaryDate;

  ImportedDate(
      {this.dateOfBirth,
      this.joiningDate,
      this.partnerDate,
      this.marriageAnniversaryDate});

  ImportedDate.fromJson(Map<String, dynamic> json) {
    dateOfBirth = json['date_of_birth'];
    joiningDate = json['joining_date'];
    partnerDate = json['partner_date'];
    marriageAnniversaryDate = json['marriage_anniversary_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date_of_birth'] = this.dateOfBirth;
    data['joining_date'] = this.joiningDate;
    data['partner_date'] = this.partnerDate;
    data['marriage_anniversary_date'] = this.marriageAnniversaryDate;
    return data;
  }
}

class BankInfoDetail {
  List<BankInfo> bankInfo;

  BankInfoDetail({this.bankInfo});

  BankInfoDetail.fromJson(Map<String, dynamic> json) {
    if (json['bank_info'] != null) {
      bankInfo = <BankInfo>[];
      json['bank_info'].forEach((v) {
        bankInfo.add(new BankInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bankInfo != null) {
      data['bank_info'] = this.bankInfo.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BankInfo {
  String employeeBankId;
  String userId;
  String bankName;
  String branchName;
  String beneficiaryName;
  String swiftCode;
  String currency;
  String accountName;
  String accountNumber;
  String routingNumber;
  String typeOfAccount;

  BankInfo(
      {this.employeeBankId,
      this.userId,
      this.bankName,
      this.branchName,
      this.beneficiaryName,
      this.swiftCode,
      this.currency,
      this.accountName,
      this.accountNumber,
      this.routingNumber,
      this.typeOfAccount});

  BankInfo.fromJson(Map<String, dynamic> json) {
    employeeBankId = json['employee_bank_id'];
    userId = json['user_id'];
    bankName = json['bank_name'];
    branchName = json['branch_name'];
    beneficiaryName = json['beneficiary_name'];
    swiftCode = json['swift_code'];
    currency = json['currency'];
    accountName = json['account_name'];
    accountNumber = json['account_number'];
    routingNumber = json['routing_number'];
    typeOfAccount = json['type_of_account'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employee_bank_id'] = this.employeeBankId;
    data['user_id'] = this.userId;
    data['bank_name'] = this.bankName;
    data['branch_name'] = this.branchName;
    data['beneficiary_name'] = this.beneficiaryName;
    data['swift_code'] = this.swiftCode;
    data['currency'] = this.currency;
    data['account_name'] = this.accountName;
    data['account_number'] = this.accountNumber;
    data['routing_number'] = this.routingNumber;
    data['type_of_account'] = this.typeOfAccount;
    return data;
  }
}

class FamilyDependents {
  List<Family> family;

  FamilyDependents({this.family});

  FamilyDependents.fromJson(Map<String, dynamic> json) {
    if (json['family'] != null) {
      family = <Family>[];
      json['family'].forEach((v) {
        family.add(new Family.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.family != null) {
      data['family'] = this.family.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Family {
  String id;
  String userId;
  String relationWith;
  String firstName;
  String lastName;
  String emergencyContact;
  String birthDate;

  Family(
      {this.id,
      this.userId,
      this.relationWith,
      this.firstName,
      this.lastName,
      this.emergencyContact,
      this.birthDate});

  Family.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    relationWith = json['relation_with'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    emergencyContact = json['emergency_contact'];
    birthDate = json['birth_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['relation_with'] = this.relationWith;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['emergency_contact'] = this.emergencyContact;
    data['birth_date'] = this.birthDate;
    return data;
  }
}

class Medical {
  List<MedicalInfo> medicalInfo;

  Medical({this.medicalInfo});

  Medical.fromJson(Map<String, dynamic> json) {
    if (json['medical_info'] != null) {
      medicalInfo = <MedicalInfo>[];
      json['medical_info'].forEach((v) {
        medicalInfo.add(new MedicalInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.medicalInfo != null) {
      data['medical_info'] = this.medicalInfo.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MedicalInfo {
  String id;
  String userId;
  String healthName;
  String conditionName;
  String startDate;
  String endDate;

  MedicalInfo(
      {this.id,
      this.userId,
      this.healthName,
      this.conditionName,
      this.startDate,
      this.endDate});

  MedicalInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    healthName = json['health_name'];
    conditionName = json['condition_name'];
    startDate = json['start_date'];
    endDate = json['end_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['health_name'] = this.healthName;
    data['condition_name'] = this.conditionName;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    return data;
  }
}

class DocumentInfo {
  String resume;
  String offerLetter;
  String joiningLetter;
  String contractPaper;
  String idProof;
  List<OtherDocument> otherDocument;

  DocumentInfo(
      {this.resume,
      this.offerLetter,
      this.joiningLetter,
      this.contractPaper,
      this.idProof,
      this.otherDocument});

  DocumentInfo.fromJson(Map<String, dynamic> json) {
    resume = json['resume'];
    offerLetter = json['offer_letter'];
    joiningLetter = json['joining_letter'];
    contractPaper = json['contract_paper'];
    idProof = json['id_proof'];
    if (json['other_document'] != null) {
      otherDocument = <OtherDocument>[];
      json['other_document'].forEach((v) {
        otherDocument.add(new OtherDocument.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resume'] = this.resume;
    data['offer_letter'] = this.offerLetter;
    data['joining_letter'] = this.joiningLetter;
    data['contract_paper'] = this.contractPaper;
    data['id_proof'] = this.idProof;
    if (this.otherDocument != null) {
      data['other_document'] =
          this.otherDocument.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OtherDocument {
  String document;

  OtherDocument({this.document});

  OtherDocument.fromJson(Map<String, dynamic> json) {
    document = json['document'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['document'] = this.document;
    return data;
  }
}
