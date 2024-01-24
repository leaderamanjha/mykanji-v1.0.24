class PostAuthForgotPasswordVerifyPostResp {
  String? message;

  PostAuthForgotPasswordVerifyPostResp({this.message});

  PostAuthForgotPasswordVerifyPostResp.fromJson(Map<String, dynamic> json) {
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
