import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(" $index", style: TextStyle(fontSize: 20),),
            trailing: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          );
        });
  }
}
