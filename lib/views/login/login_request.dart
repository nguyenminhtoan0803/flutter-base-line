import 'package:demo/views/login/login_ctr.dart';

import '../../models/user.dart';

class LoginRequest {
  LoginCtr con = new LoginCtr();
  Future<User?> getLogin(String username, String password) {
    var result = con.getLogin(username, password);
    return result;
  }
}