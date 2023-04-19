import 'package:demo/views/login/login.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}
final routes = {
  '/login':(BuildContext context) => new Login(),
  '/':(BuildContext context) => new Login(),

};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sqflite App',
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: routes,
    );
  }
}
