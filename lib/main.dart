import 'package:demo/models/user.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:demo/res/Strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //init hive database
  await Hive.initFlutter();
  // Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<User>('transactions');
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: Strings.title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.indigo),
      );
}
