class AePS_WBModel {
  String? _statuscode;
  String? _status;
  Data? _data;

  AePS_WBModel({String? statuscode, String? status, Data? data}) {
    if (statuscode != null) {
      this._statuscode = statuscode;
    }
    if (status != null) {
      this._status = status;
    }
    if (data != null) {
      this._data = data;
    }
  }

  String? get statuscode => _statuscode;
  set statuscode(String? statuscode) => _statuscode = statuscode;
  String? get status => _status;
  set status(String? status) => _status = status;
  Data? get data => _data;
  set data(Data? data) => _data = data;

  AePS_WBModel.fromJson(Map<String, dynamic> json) {
    _statuscode = json['statuscode'];
    _status = json['status'];
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statuscode'] = this._statuscode;
    data['status'] = this._status;
    if (this._data != null) {
      data['data'] = this._data!.toJson();
    }
    return data;
  }
}

class Data {
  String? _userBalance;

  Data({String? userBalance}) {
    if (userBalance != null) {
      this._userBalance = userBalance;
    }
  }

  String? get userBalance => _userBalance;
  set userBalance(String? userBalance) => _userBalance = userBalance;

  Data.fromJson(Map<String, dynamic> json) {
    _userBalance = json['userBalance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userBalance'] = this._userBalance;
    return data;
  }
}
