class LoginModel {
  final String message;
  final String username;
  final String accessToken;
  final String refreshToken;

  LoginModel({
    required this.message,
    required this.username,
    required this.accessToken,
    required this.refreshToken,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: json["message"] ?? '',
        username: json["username"] ?? '',
        accessToken: json["accessToken"] ?? '',
        refreshToken: json["refreshToken"] ?? '',
      );
}
