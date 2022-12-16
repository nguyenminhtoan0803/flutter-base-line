import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo/bloc/todo_bloc.dart';

class TodoHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var txtTodoController = TextEditingController();
    var bloc = Provider.of<TodoBloc>(context);
    return Row(
      children: <Widget>[
        Expanded(child: TextFormField(
          controller: txtTodoController,
          decoration: const InputDecoration(
              labelText: 'Add todo', hintText: 'add Todo'),
        ),
        ),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton.icon(
            onPressed: () {

            },
            icon: const Icon(Icons.add),
            label: const Text('Add'))
      ],
    );
  }
}