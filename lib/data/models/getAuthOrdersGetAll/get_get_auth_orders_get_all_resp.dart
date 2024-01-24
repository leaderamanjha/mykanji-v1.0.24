class GetGetAuthOrdersGetAllResp {
  List<Data>? data;

  GetGetAuthOrdersGetAllResp({this.data});

  GetGetAuthOrdersGetAllResp.fromJson(Map<String, dynamic> json) {
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
  String? userId;
  String? orderId;
  String? productId;
  String? status;
  int? sV;
  Product? product;
  Category? category;

  Data(
      {this.sId,
      this.userId,
      this.orderId,
      this.productId,
      this.status,
      this.sV,
      this.product,
      this.category});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userId = json['userId'];
    orderId = json['orderId'];
    productId = json['productId'];
    status = json['status'];
    sV = json['__v'];
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (sId != null) {
      data['_id'] = sId;
    }
    if (userId != null) {
      data['userId'] = userId;
    }
    if (orderId != null) {
      data['orderId'] = orderId;
    }
    if (productId != null) {
      data['productId'] = productId;
    }
    if (status != null) {
      data['status'] = status;
    }
    if (sV != null) {
      data['__v'] = sV;
    }
    if (product != null) {
      data['product'] = product?.toJson();
    }
    if (category != null) {
      data['category'] = category?.toJson();
    }
    return data;
  }
}

class Product {
  String? sId;
  String? userId;
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
  List<ProductImage>? productImage;
  String? sellerName;
  int? sV;

  Product(
      {this.sId,
      this.userId,
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
      this.sellerName,
      this.sV});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userId = json['userId'];
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
    if (json['productImage'] != null) {
      productImage = <ProductImage>[];
      json['productImage'].forEach((v) {
        productImage?.add(ProductImage.fromJson(v));
      });
    }
    sellerName = json['sellerName'];
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
      data['productImage'] = productImage?.map((v) => v.toJson()).toList();
    }
    if (sellerName != null) {
      data['sellerName'] = sellerName;
    }
    if (sV != null) {
      data['__v'] = sV;
    }
    return data;
  }
}

class ProductImage {
  String? filename;
  String? s3Key;
  String? url;
  String? sId;

  ProductImage({this.filename, this.s3Key, this.url, this.sId});

  ProductImage.fromJson(Map<String, dynamic> json) {
    filename = json['filename'];
    s3Key = json['s3Key'];
    url = json['url'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (filename != null) {
      data['filename'] = filename;
    }
    if (s3Key != null) {
      data['s3Key'] = s3Key;
    }
    if (url != null) {
      data['url'] = url;
    }
    if (sId != null) {
      data['_id'] = sId;
    }
    return data;
  }
}

class Category {
  String? sId;
  String? categoryName;
  String? image;
  int? sV;
  int? categoryNo;

  Category({this.sId, this.categoryName, this.image, this.sV, this.categoryNo});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    categoryName = json['categoryName'];
    image = json['image'];
    sV = json['__v'];
    categoryNo = json['category_no'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (sId != null) {
      data['_id'] = sId;
    }
    if (categoryName != null) {
      data['categoryName'] = categoryName;
    }
    if (image != null) {
      data['image'] = image;
    }
    if (sV != null) {
      data['__v'] = sV;
    }
    if (categoryNo != null) {
      data['category_no'] = categoryNo;
    }
    return data;
  }
}
