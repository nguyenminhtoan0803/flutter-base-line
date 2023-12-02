class User {
  late String? _username;
  late String? _password;
  late int? _role;

  User(this._username, this._password, this._role);
  User.fromMap(dynamic obj) {
    _username = obj['username'];
    _password = obj['password'];
    _role = obj['role'];
  }

  String? get username => _username;
  String? get password => _password;
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['username'] = _username;
    map['password'] = _password;
    map['role'] = _role;
    return map;
  }
}
