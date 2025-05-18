//user entity

class User {
  String userId;
  String name;
  String email;
  String role;
  String companyName;
  String profileURL;

  User(
      {required this.userId,
      required this.name,
      required this.email,
      required this.role,
      required this.companyName,
      required this.profileURL});
}
