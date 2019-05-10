import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'todo_model.dart';

@immutable
abstract class TodoEvent extends Equatable {
  TodoEvent([List props = const []]) : super(props);
}

class AddTodo extends TodoEvent {
  final Todo todo;

  AddTodo(this.todo) : super([todo]);

  @override
  String toString() {
    return 'add todo: $todo';
  }
}
