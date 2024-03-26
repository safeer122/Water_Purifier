
class ProfileModel {
  String? id;
  dynamic profile;
  String? name;
  String? email;
  String? mobile;
  String? address;
  String? employeeCode;
  String? createdOn;

  ProfileModel({this.id, this.profile, this.name, this.email, this.mobile, this.address, this.employeeCode, this.createdOn});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    profile = json["profile"];
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["mobile"] is String) {
      mobile = json["mobile"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["employee_code"] is String) {
      employeeCode = json["employee_code"];
    }
    if(json["created_on"] is String) {
      createdOn = json["created_on"];
    }
  }

  static List<ProfileModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => ProfileModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["profile"] = profile;
    _data["name"] = name;
    _data["email"] = email;
    _data["mobile"] = mobile;
    _data["address"] = address;
    _data["employee_code"] = employeeCode;
    _data["created_on"] = createdOn;
    return _data;
  }

  ProfileModel copyWith({
    String? id,
    dynamic profile,
    String? name,
    String? email,
    String? mobile,
    String? address,
    String? employeeCode,
    String? createdOn,
  }) => ProfileModel(
    id: id ?? this.id,
    profile: profile ?? this.profile,
    name: name ?? this.name,
    email: email ?? this.email,
    mobile: mobile ?? this.mobile,
    address: address ?? this.address,
    employeeCode: employeeCode ?? this.employeeCode,
    createdOn: createdOn ?? this.createdOn,
  );
}