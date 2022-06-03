import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  bool status;
  String message;
  Data data;

  factory LoginResponse.fromJson(Map<dynamic, dynamic> json) => LoginResponse(
    status: json["status"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<dynamic, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.user,
    required this.token,
  });

  User user;
  String token;

  factory Data.fromJson(Map<dynamic, dynamic> json) => Data(
    user: User.fromJson(json["user"]),
    token: json["token"],
  );

  Map<dynamic, dynamic> toJson() => {
    "user": user.toJson(),
    "token": token,
  };
}

class User {
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.emailVerifiedAt,
    required this.phone,
    this.profileImage,
    required this.profileCompleted,
    required this.availableBalance,
    required this.ledgerBalance,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String firstName;
  String lastName;
  String email;
  DateTime emailVerifiedAt;
  String phone;
  dynamic profileImage;
  bool profileCompleted;
  int availableBalance;
  int ledgerBalance;
  DateTime createdAt;
  DateTime updatedAt;

  factory User.fromJson(Map<dynamic, dynamic> json) => User(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    emailVerifiedAt: DateTime.parse(json["email_verified_at"]),
    phone: json["phone"],
    profileImage: json["profile_image"],
    profileCompleted: json["profile_completed"],
    availableBalance: json["available_balance"],
    ledgerBalance: json["ledger_balance"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<dynamic, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "email_verified_at": emailVerifiedAt.toIso8601String(),
    "phone": phone,
    "profile_image": profileImage,
    "profile_completed": profileCompleted,
    "available_balance": availableBalance,
    "ledger_balance": ledgerBalance,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
