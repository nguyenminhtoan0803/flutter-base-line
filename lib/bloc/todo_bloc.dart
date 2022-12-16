import 'dart:async';
import 'package:demo/core/bloc/base_bloc.dart';
import 'package:demo/core/bloc/base_events.dart';
import '../models/todo.dart';
import '../events/add_todo_event.dart';
import '../events/delete_todo_event.dart';

class TodoBloc extends BaseBloc{
  StreamController<List<Todo>> _todoListStreamController = StreamController<List<Todo>>();

  @override
  void dispatchEvent(BaseEvent event) {
    if (event is AddTodoEvent) {

    } else if (event is DeleteToDoEvent) {

    }
  }
  @override
  void dispose() {

    super.dispose();
    _todoListStreamController.close();
  }

  _addTodo(Todo todo) {

  }

  _deleteTodo(Todo todo) {

  }
}