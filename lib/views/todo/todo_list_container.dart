import 'package:flutter/material.dart';
import 'todo_header.dart';
import 'todo_list.dart';
class TodoListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TodoHeader(),
         Expanded(child: TodoList(),),
        ],
      ),
    );
  }
}