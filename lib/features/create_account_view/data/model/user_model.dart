class UserModel {
  final String userID;
  final String name;
  final String email;
  final String phone;
  final String image;

  UserModel({
    required this.userID,
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userID: json['userID'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'name': name,
      'email': email,
      'phone': phone,
      'image': image,
    };
  }
}
