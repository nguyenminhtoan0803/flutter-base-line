import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomePage extends StatefulWidget {
  final VoidCallback signOut;
  HomePage(this.signOut);
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  var value;
  /// settting state signout
  signOut() {
    setState(() {
      widget.signOut;
    });
  }
  ///
  @override
  void initState() {
    super.initState();
    getPref();
  }
 ///get data with shareprefences
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value");
    });
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              signOut();
            },
            icon: const Icon(Icons.lock_open),
          ),
        ],
      ),
      body: const Center(
        child: Text("Home page"),
      ),
    );
  }
}