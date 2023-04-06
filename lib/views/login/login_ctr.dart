import 'package:demo/core/DatabaseHelper.dart';
import 'package:demo/models/user.dart';

class LoginCtr{
  DatabaseHelper helper = new DatabaseHelper();

  //method login with data local
  Future<User?> getLogin(String user, String password) async {
    var dbClient = await helper.db;
    var res = await dbClient?.rawQuery("SELECT * FROM user WHERE username = '$user' and password = '$password'");
    if (res?.length != null) {
      return new User.fromMap(res?.first);
    }
    return null;
  }
}