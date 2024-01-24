class PostAuthLoginPostReq {
  String? userName;
  String? password;

  PostAuthLoginPostReq({this.userName, this.password});

  PostAuthLoginPostReq.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (userName != null) {
      data['userName'] = userName;
    }
    if (password != null) {
      data['password'] = password;
    }
    return data;
  }
}
