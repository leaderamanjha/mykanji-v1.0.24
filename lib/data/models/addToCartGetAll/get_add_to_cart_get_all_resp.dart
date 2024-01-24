class GetAddToCartGetAllResp {
  List<AddToCarts>? addToCarts;
  int? amount;

  GetAddToCartGetAllResp({this.addToCarts, this.amount});

  GetAddToCartGetAllResp.fromJson(Map<String, dynamic> json) {
    if (json['addToCarts'] != null) {
      addToCarts = <AddToCarts>[];
      json['addToCarts'].forEach((v) {
        addToCarts?.add(AddToCarts.fromJson(v));
      });
    }
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (addToCarts != null) {
      data['addToCarts'] = addToCarts?.map((v) => v.toJson()).toList();
    }
    if (amount != null) {
      data['amount'] = amount;
    }
    return data;
  }
}

class AddToCarts {
  String? sId;
  String? userId;
  String? productId;
  int? quantity;
  String? productsName;
  String? subHeading;
  int? productPrice;
  String? type;
  String? fabric;
  String? printOrPattern;
  String? border;
  String? sizeFit;
  String? description;
  int? productNo;
  List<String>? productImage;
  int? sV;

  AddToCarts(
      {this.sId,
      this.userId,
      this.productId,
      this.quantity,
      this.productsName,
      this.subHeading,
      this.productPrice,
      this.type,
      this.fabric,
      this.printOrPattern,
      this.border,
      this.sizeFit,
      this.description,
      this.productNo,
      this.productImage,
      this.sV});

  AddToCarts.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userId = json['userId'];
    productId = json['product_id'];
    quantity = json['quantity'];
    productsName = json['productsName'];
    subHeading = json['subHeading'];
    productPrice = json['productPrice'];
    type = json['type'];
    fabric = json['fabric'];
    printOrPattern = json['printOrPattern'];
    border = json['border'];
    sizeFit = json['sizeFit'];
    description = json['description'];
    productNo = json['product_no'];
    productImage = json['productImage'].cast<String>();
    sV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (sId != null) {
      data['_id'] = sId;
    }
    if (userId != null) {
      data['userId'] = userId;
    }
    if (productId != null) {
      data['product_id'] = productId;
    }
    if (quantity != null) {
      data['quantity'] = quantity;
    }
    if (productsName != null) {
      data['productsName'] = productsName;
    }
    if (subHeading != null) {
      data['subHeading'] = subHeading;
    }
    if (productPrice != null) {
      data['productPrice'] = productPrice;
    }
    if (type != null) {
      data['type'] = type;
    }
    if (fabric != null) {
      data['fabric'] = fabric;
    }
    if (printOrPattern != null) {
      data['printOrPattern'] = printOrPattern;
    }
    if (border != null) {
      data['border'] = border;
    }
    if (sizeFit != null) {
      data['sizeFit'] = sizeFit;
    }
    if (description != null) {
      data['description'] = description;
    }
    if (productNo != null) {
      data['product_no'] = productNo;
    }
    if (productImage != null) {
      data['productImage'] = productImage;
    }
    if (sV != null) {
      data['__v'] = sV;
    }
    return data;
  }
}
