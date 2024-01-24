class PostAddToCartResp {
  String? message;

  PostAddToCartResp({this.message});

  PostAddToCartResp.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message;
    }
    return data;
  }
}
