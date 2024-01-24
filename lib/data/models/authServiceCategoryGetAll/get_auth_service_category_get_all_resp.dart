class GetAuthServiceCategoryGetAllResp {
  List<Data>? data;

  GetAuthServiceCategoryGetAllResp({this.data});

  GetAuthServiceCategoryGetAllResp.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? serviceCatName;
  String? serviceCatPriceRange;
  int? serviceCatJobsDone;
  String? shortDescription;
  int? serviceCatNo;
  List<String>? portfolioImg;
  int? sV;

  Data(
      {this.sId,
      this.serviceCatName,
      this.serviceCatPriceRange,
      this.serviceCatJobsDone,
      this.shortDescription,
      this.serviceCatNo,
      this.portfolioImg,
      this.sV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    serviceCatName = json['serviceCatName'];
    serviceCatPriceRange = json['serviceCatPriceRange'];
    serviceCatJobsDone = json['serviceCatJobsDone'];
    shortDescription = json['shortDescription'];
    serviceCatNo = json['serviceCat_no'];
    portfolioImg = json['portfolioImg'].cast<String>();
    sV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (sId != null) {
      data['_id'] = sId;
    }
    if (serviceCatName != null) {
      data['serviceCatName'] = serviceCatName;
    }
    if (serviceCatPriceRange != null) {
      data['serviceCatPriceRange'] = serviceCatPriceRange;
    }
    if (serviceCatJobsDone != null) {
      data['serviceCatJobsDone'] = serviceCatJobsDone;
    }
    if (shortDescription != null) {
      data['shortDescription'] = shortDescription;
    }
    if (serviceCatNo != null) {
      data['serviceCat_no'] = serviceCatNo;
    }
    if (portfolioImg != null) {
      data['portfolioImg'] = portfolioImg;
    }
    if (sV != null) {
      data['__v'] = sV;
    }
    return data;
  }
}
