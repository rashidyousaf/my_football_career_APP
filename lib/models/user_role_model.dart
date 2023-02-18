class UserRoleModel {
  String? id;
  String? role;

  UserRoleModel({this.id, this.role});

  UserRoleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['role'] = role;
    return data;
  }
}
