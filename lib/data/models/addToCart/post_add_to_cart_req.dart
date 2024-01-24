class PostAddToCartReq {
  String? productId;
  int? quantity;

  PostAddToCartReq({this.productId, this.quantity});

  PostAddToCartReq.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (productId != null) {
      data['product_id'] = productId;
    }
    if (quantity != null) {
      data['quantity'] = quantity;
    }
    return data;
  }
}
