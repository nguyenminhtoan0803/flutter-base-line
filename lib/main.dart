import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:demo/models/user.dart';
import 'package:provider/provider.dart';
import 'package:demo/bloc/todo_bloc.dart';
import 'package:demo/views/todo/todo_list_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //init hive database
 // await Hive.initFlutter();
  // Hive.registerAdapter(TransactionAdapter());
  //await Hive.openBox<User>('transactions');
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Todo')),
        body: Provider<TodoBloc>.value(
          value: TodoBloc(),
          child: TodoListContainer(),
        ),
      ),
    );
  }
}
