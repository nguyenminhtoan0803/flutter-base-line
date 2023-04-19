import 'package:demo/models/user.dart';
import 'package:demo/views/login/login_request.dart';

abstract class LoginCallBack {
  void onLoginSuccess(User user);
  void onLoginError(String error);
}

class LoginReponse {
  final LoginCallBack _callBack;
  LoginRequest request = LoginRequest();

  LoginReponse(this._callBack);

  doLogin(String userName, String password) {
    request
        .getLogin(userName, password)
        .then((user) => _callBack.onLoginSuccess(user!))
        .catchError(
            (onError) => _callBack.onLoginError(onError.toString()));
  }
}
