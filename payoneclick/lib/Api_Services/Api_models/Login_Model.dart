// class LoginModel {
//   String? statuscode;
//   String? status;
//   Data? data;
//
//   LoginModel({this.statuscode, this.status, this.data});
//
//   LoginModel.fromJson(Map<String, dynamic> json) {
//     statuscode = json['statuscode'];
//     status = json['status'];
//     data = json['data'] != null ? Data.fromJson(json['data']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['statuscode'] = this.statuscode;
//     data['status'] = this.status;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }
//
// class Data {
//   String? userID;
//   String? name;
//   String? mobileNo;
//   String? emailID;
//   String? dob;
//   String? profileImg;
//   String? companyName;
//   String? address;
//   String? panCardNo;
//   String? aadharNo;
//   String? capBalance;
//   String? walletBalance;
//   String? createDate;
//   String? userType;
//   String? userTypeId;
//   String? kycStatus;
//   String? cityname;
//   String? appversion;
//   bool? mpin;
//   bool? tmpin;
//   String? merchantId;
//
//   Data(
//       {this.userID,
//         this.name,
//         this.mobileNo,
//         this.emailID,
//         this.dob,
//         this.profileImg,
//         this.companyName,
//         this.address,
//         this.panCardNo,
//         this.aadharNo,
//         this.capBalance,
//         this.walletBalance,
//         this.createDate,
//         this.userType,
//         this.userTypeId,
//         this.kycStatus,
//         this.cityname,
//         this.appversion,
//         this.mpin,
//         this.tmpin,
//         this.merchantId});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     userID = json['UserID'];
//     name = json['name'];
//     mobileNo = json['mobileNo'];
//     emailID = json['emailID'];
//     dob = json['dob'];
//     profileImg = json['profileImg'];
//     companyName = json['companyName'];
//     address = json['address'];
//     panCardNo = json['panCardNo'];
//     aadharNo = json['aadharNo'];
//     capBalance = json['capBalance'];
//     walletBalance = json['walletBalance'];
//     createDate = json['CreateDate'];
//     userType = json['userType'];
//     userTypeId = json['userTypeId'];
//     kycStatus = json['KycStatus'];
//     cityname = json['cityname'];
//     appversion = json['appversion'];
//     mpin = json['mpin'];
//     tmpin = json['tmpin'];
//     merchantId = json['merchantId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['UserID'] = this.userID;
//     data['name'] = this.name;
//     data['mobileNo'] = this.mobileNo;
//     data['emailID'] = this.emailID;
//     data['dob'] = this.dob;
//     data['profileImg'] = this.profileImg;
//     data['companyName'] = this.companyName;
//     data['address'] = this.address;
//     data['panCardNo'] = this.panCardNo;
//     data['aadharNo'] = this.aadharNo;
//     data['capBalance'] = this.capBalance;
//     data['walletBalance'] = this.walletBalance;
//     data['CreateDate'] = this.createDate;
//     data['userType'] = this.userType;
//     data['userTypeId'] = this.userTypeId;
//     data['KycStatus'] = this.kycStatus;
//     data['cityname'] = this.cityname;
//     data['appversion'] = this.appversion;
//     data['mpin'] = this.mpin;
//     data['tmpin'] = this.tmpin;
//     data['merchantId'] = this.merchantId;
//     return data;
//   }
// }

class LoginModel {
  String? statuscode;
  String? status;
  Data? data;

  LoginModel({this.statuscode, this.status, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    statuscode = json['statuscode'];
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statuscode'] = this.statuscode;
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? userID;
  String? name;
  String? mobileNo;
  String? emailID;
  String? dob;
  String? profileImg;
  String? companyName;
  String? address;
  String? panCardNo;
  String? aadharNo;
  String? capBalance;
  String? walletBalance;
  String? createDate;
  String? userType;
  String? userTypeId;
  String? kycStatus;
  String? cityname;
  dynamic appversion;
  bool? mpin;
  bool? tmpin;
  String? merchantId;

  Data({
    this.userID,
    this.name,
    this.mobileNo,
    this.emailID,
    this.dob,
    this.profileImg,
    this.companyName,
    this.address,
    this.panCardNo,
    this.aadharNo,
    this.capBalance,
    this.walletBalance,
    this.createDate,
    this.userType,
    this.userTypeId,
    this.kycStatus,
    this.cityname,
    this.appversion,
    this.mpin,
    this.tmpin,
    this.merchantId,
  });

  Data.fromJson(Map<String, dynamic> json) {
    userID = json['UserID'];
    name = json['name'];
    mobileNo = json['mobileNo'];
    emailID = json['emailID'];
    dob = json['dob'];
    profileImg = json['profileImg'];
    companyName = json['companyName'];
    address = json['address'];
    panCardNo = json['panCardNo'];
    aadharNo = json['aadharNo'];
    capBalance = json['capBalance'];
    walletBalance = json['walletBalance'];
    createDate = json['CreateDate'];
    userType = json['userType'];
    userTypeId = json['userTypeId'];
    kycStatus = json['KycStatus'];
    cityname = json['cityname'];
    appversion = json['appversion'];
    mpin = json['mpin'];
    tmpin = json['tmpin'];
    merchantId = json['merchantId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['UserID'] = userID;
    data['name'] = name;
    data['mobileNo'] = mobileNo;
    data['emailID'] = emailID;
    data['dob'] = dob;
    data['profileImg'] = profileImg;
    data['companyName'] = companyName;
    data['address'] = address;
    data['panCardNo'] = panCardNo;
    data['aadharNo'] = aadharNo;
    data['capBalance'] = capBalance;
    data['walletBalance'] = walletBalance;
    data['CreateDate'] = createDate;
    data['userType'] = userType;
    data['userTypeId'] = userTypeId;
    data['KycStatus'] = kycStatus;
    data['cityname'] = cityname;
    data['appversion'] = appversion;
    data['mpin'] = mpin;
    data['tmpin'] = tmpin;
    data['merchantId'] = merchantId;
    return data;
  }
}