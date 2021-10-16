class LoginResponseModel {
  String message;
  String status;
  String validity;
  Data data;

  LoginResponseModel({this.message, this.status, this.validity, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
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
  String userName;
  String email;
  String name;
  String photo;
  String employeeID;
  String designationsId;
  String userId;
  String lastLogin;
  int onlineTime;
  bool loggedin;
  String userType;
  String superAdmin;
  int userFlag;
  String userImage;
  String direction;
  String countryHead;
  String country;
  String url;
  String token;

  Data(
      {this.userName,
      this.email,
      this.name,
      this.photo,
      this.employeeID,
      this.designationsId,
      this.userId,
      this.lastLogin,
      this.onlineTime,
      this.loggedin,
      this.userType,
      this.superAdmin,
      this.userFlag,
      this.direction,
      this.userImage,
      this.countryHead,
      this.country,
      this.url,
      this.token});

  Data.fromJson(Map<String, dynamic> json) {
    userName = json['user_name'];
    email = json['email'];
    name = json['name'];
    photo = json['photo'];
    employeeID = json['Employee_id'];
    designationsId = json['designations_id'];
    userId = json['user_id'];
    lastLogin = json['last_login'];
    onlineTime = json['online_time'];
    loggedin = json['loggedin'];
    userType = json['user_type'];
    superAdmin = json['super_admin'];
    userFlag = json['user_flag'];
    direction = json['direction'];
    userImage = json['image'];
    countryHead = json['country_head'];
    country = json['country'];
    url = json['url'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_name'] = this.userName;
    data['email'] = this.email;
    data['name'] = this.name;
    data['photo'] = this.photo;
    data['Employee_id'] = this.employeeID;
    data['designations_id'] = this.designationsId;
    data['user_id'] = this.userId;
    data['last_login'] = this.lastLogin;
    data['online_time'] = this.onlineTime;
    data['loggedin'] = this.loggedin;
    data['user_type'] = this.userType;
    data['super_admin'] = this.superAdmin;
    data['user_flag'] = this.userFlag;
    data['image'] = this.userImage;
    data['direction'] = this.direction;
    data['country_head'] = this.countryHead;
    data['country'] = this.country;
    data['url'] = this.url;
    data['token'] = this.token;
    return data;
  }
}