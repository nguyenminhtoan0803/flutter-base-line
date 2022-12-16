import 'package:demo/core/bloc/base_events.dart';

class AddTodoEvent extends BaseEvent {
  String content;
  AddTodoEvent(this.content);
}