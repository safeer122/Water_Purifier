class Customermodel {
  Customermodel({
      this.id, 
      this.profile, 
      this.name, 
      this.email, 
      this.address, 
      this.mobile, 
      this.whatsappNumber, 
      this.customerCode, 
      this.location, 
      this.createdOn, 
      this.installedProduct,});

  Customermodel.fromJson(dynamic json) {
    id = json['id'];
    profile = json['profile'];
    name = json['name'];
    email = json['email'];
    address = json['address'];
    mobile = json['mobile'];
    whatsappNumber = json['whatsapp_number'];
    customerCode = json['customer_code'];
    location = json['location'];
    createdOn = json['created_on'];
    installedProduct = json['installed_product'] != null ? json['installed_product'].cast<String>() : [];
  }
  String? id;
  String? profile;
  String? name;
  String? email;
  String? address;
  String? mobile;
  String? whatsappNumber;
  String? customerCode;
  dynamic location;
  String? createdOn;
  List<String>? installedProduct;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['profile'] = profile;
    map['name'] = name;
    map['email'] = email;
    map['address'] = address;
    map['mobile'] = mobile;
    map['whatsapp_number'] = whatsappNumber;
    map['customer_code'] = customerCode;
    map['location'] = location;
    map['created_on'] = createdOn;
    map['installed_product'] = installedProduct;
    return map;
  }
  static List<Customermodel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => Customermodel.fromJson(value)).toList();}
}