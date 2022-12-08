import 'package:demo/models/user.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:demo/core/dialog/AlertDialogCommon.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //init hive database
  await Hive.initFlutter();
  // Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<User>('transactions');
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: const Center(
          child: AlertDialogInfor(title: 'abc', content:'abc')
        ),
      ),
    );
  }
}
