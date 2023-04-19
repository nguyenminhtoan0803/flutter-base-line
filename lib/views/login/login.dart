import 'package:demo/models/user.dart';
import 'package:demo/views/home_page.dart';
import 'package:demo/views/login/login_response.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum LoginStatus {
  notSign,
  signIn;
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> implements LoginCallBack{
  var value;
  LoginStatus _loginStatus = LoginStatus.notSign;
  late BuildContext _context;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  late String _username;
  late String _password;

  late LoginReponse _reponse;

  /// constructor
  _LoginState() {
    _reponse = new LoginReponse(this as LoginCallBack);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPref();
  }

  /// get data instance
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value");
      _loginStatus = value == 1 ? LoginStatus.signIn : LoginStatus.notSign;
    });
  }

  ///method submit form after validate success
  void _submit() {
    final form = formKey.currentState;
    if (form != null && form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _reponse.doLogin(_username, _password);
      });
    }
  }

  ///
  void _showSnackBar(String text) {
    scaffoldKey.currentState!.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  signOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", 0);
      preferences.commit();
      _loginStatus = LoginStatus.notSign;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_loginStatus) {
      case LoginStatus.notSign:
        _context = context;
        var loginBtn = ElevatedButton(
          onPressed: () {
            _submit;
          },
          child: new Text("Login"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        );
        var loginForm = Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Form(
              child: Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new TextFormField(
                      onSaved: (val) => {_username = val!},
                      decoration: new InputDecoration(
                        labelText: "Username",
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new TextFormField(
                      onSaved: (val) => {
                        _password = val!,
                      },
                      decoration: new InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            loginBtn
          ],
        );
        return new Scaffold(
          appBar: new AppBar(
            title: new Text("Login Page"),
          ),
          key: scaffoldKey,
          body: new Container(
            child: new Center(
              child: loginForm,
            ),
          ),
        );
        break;
      case LoginStatus.signIn:
        return HomePage(signOut);
        break;
    }
  }
  ///add data in SharedPreferences
  savePref(int value, String username, String password) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", value);
      preferences.setString("username", username);
      preferences.setString("password", password);
    });
  }

  @override
  void onLoginError(String error) {
    _showSnackBar(error);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void onLoginSuccess(User user) {
    if(user != null){
      savePref(1,user.username!, user.password!);
      _loginStatus = LoginStatus.signIn;
    }else{
      _showSnackBar("Login Gagal, Silahkan Periksa Login Anda");
      setState(() {
        _isLoading = false;
      });
    }
  }
}
