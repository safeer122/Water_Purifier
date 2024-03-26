
class LoginModel {
  String? accessToken;
  User? user;
  String? msg;

  LoginModel({this.accessToken, this.user, this.msg});

  LoginModel.fromJson(Map<String, dynamic> json) {
    if(json["access_token"] is String) {
      accessToken = json["access_token"];
    }
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
    if(json["msg"] is String) {
      msg = json["msg"];
    }
  }

  static List<LoginModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => LoginModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["msg"] = msg;
    return _data;
  }

  LoginModel copyWith({
    String? accessToken,
    User? user,
    String? msg,
  }) => LoginModel(
    accessToken: accessToken ?? this.accessToken,
    user: user ?? this.user,
    msg: msg ?? this.msg,
  );
}

class User {
  int? id;
  String? username;
  String? email;

  User({this.id, this.username, this.email});

  User.fromJson(Map<String, dynamic> json) {
    if(json["id"] is num) {
      id = (json["id"] as num).toInt();
    }
    if(json["username"] is String) {
      username = json["username"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
  }

  static List<User> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => User.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["username"] = username;
    _data["email"] = email;
    return _data;
  }

  User copyWith({
    int? id,
    String? username,
    String? email,
  }) => User(
    id: id ?? this.id,
    username: username ?? this.username,
    email: email ?? this.email,
  );
}