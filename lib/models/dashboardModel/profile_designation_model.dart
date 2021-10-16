class ProfileDesignationModel {
  String message;
  String status;
  String validity;
  Data data;

  ProfileDesignationModel(
      {this.message, this.status, this.validity, this.data});

  ProfileDesignationModel.fromJson(Map<String, dynamic> json) {
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
  String designation;
  String deparmentHead;
  List<SubDesignation> subDesignation;

  Data({this.designation, this.deparmentHead, this.subDesignation});

  Data.fromJson(Map<String, dynamic> json) {
    designation = json['Designation'];
    deparmentHead = json['Deparment_head'];
    if (json['Sub_Designation'] != null) {
      subDesignation = <SubDesignation>[];
      json['Sub_Designation'].forEach((v) {
        subDesignation.add(new SubDesignation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Designation'] = this.designation;
    data['Deparment_head'] = this.deparmentHead;
    if (this.subDesignation != null) {
      data['Sub_Designation'] =
          this.subDesignation.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubDesignation {
  String name;

  SubDesignation({this.name});

  SubDesignation.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}