
class Todo {
  late int _id;
  late String _content;

  Todo.formData(id, content ) {
    _id = id;
    _content = content;
  }

  String get content => _content;

  set content(String value) {
    _content = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}