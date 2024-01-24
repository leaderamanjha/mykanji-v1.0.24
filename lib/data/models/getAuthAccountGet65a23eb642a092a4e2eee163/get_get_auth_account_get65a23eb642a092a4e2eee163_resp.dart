class GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp {
  Data? data;

  GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp({this.data});

  GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp.fromJson(
      Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? accountLastName;
  String? accountFirstName;
  String? accountMobileNo;
  String? accountAltMobileNo;
  String? accountEmail;
  String? accountAddressOne;
  String? accountCityOne;
  String? accountPinOne;
  String? accountAddressTwo;
  String? accountCityTwo;
  String? accountPinTwo;
  bool? defaultAddress;
  int? sV;

  Data(
      {this.sId,
      this.accountLastName,
      this.accountFirstName,
      this.accountMobileNo,
      this.accountAltMobileNo,
      this.accountEmail,
      this.accountAddressOne,
      this.accountCityOne,
      this.accountPinOne,
      this.accountAddressTwo,
      this.accountCityTwo,
      this.accountPinTwo,
      this.defaultAddress,
      this.sV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    accountLastName = json['accountLastName'];
    accountFirstName = json['accountFirstName'];
    accountMobileNo = json['accountMobileNo'];
    accountAltMobileNo = json['accountAltMobileNo'];
    accountEmail = json['accountEmail'];
    accountAddressOne = json['accountAddressOne'];
    accountCityOne = json['accountCityOne'];
    accountPinOne = json['accountPinOne'];
    accountAddressTwo = json['accountAddressTwo'];
    accountCityTwo = json['accountCityTwo'];
    accountPinTwo = json['accountPinTwo'];
    defaultAddress = json['defaultAddress'];
    sV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (sId != null) {
      data['_id'] = sId;
    }
    if (accountLastName != null) {
      data['accountLastName'] = accountLastName;
    }
    if (accountFirstName != null) {
      data['accountFirstName'] = accountFirstName;
    }
    if (accountMobileNo != null) {
      data['accountMobileNo'] = accountMobileNo;
    }
    if (accountAltMobileNo != null) {
      data['accountAltMobileNo'] = accountAltMobileNo;
    }
    if (accountEmail != null) {
      data['accountEmail'] = accountEmail;
    }
    if (accountAddressOne != null) {
      data['accountAddressOne'] = accountAddressOne;
    }
    if (accountCityOne != null) {
      data['accountCityOne'] = accountCityOne;
    }
    if (accountPinOne != null) {
      data['accountPinOne'] = accountPinOne;
    }
    if (accountAddressTwo != null) {
      data['accountAddressTwo'] = accountAddressTwo;
    }
    if (accountCityTwo != null) {
      data['accountCityTwo'] = accountCityTwo;
    }
    if (accountPinTwo != null) {
      data['accountPinTwo'] = accountPinTwo;
    }
    if (defaultAddress != null) {
      data['defaultAddress'] = defaultAddress;
    }
    if (sV != null) {
      data['__v'] = sV;
    }
    return data;
  }
}
