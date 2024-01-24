class PostForgotPasswordPostReq {
  String? userName;

  PostForgotPasswordPostReq({this.userName});

  PostForgotPasswordPostReq.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (userName != null) {
      data['userName'] = userName;
    }
    return data;
  }
}
