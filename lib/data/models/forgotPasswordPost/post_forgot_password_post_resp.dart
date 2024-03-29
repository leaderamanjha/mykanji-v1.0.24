class PostForgotPasswordPostResp {
  String? message;

  PostForgotPasswordPostResp({this.message});

  PostForgotPasswordPostResp.fromJson(Map<String, dynamic> json) {
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
