class User {
  final String username;
  final String password;
  final String role;

  const User({
    required this.username,
    required this.password,
    required this.role,
    });

  Map<String, dynamic> toMap() {
    return {
      'username':username,
      'password':password,
      'role':role
    };
  }

  @override
  String toString() {
    return 'User{username: ${username}, password:${password}, role:${role}';
  }
}