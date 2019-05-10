import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'todo_model.dart';

@immutable
abstract class TodoState extends Equatable {
  TodoState([List props = const []]) : super(props);
}

class TodosLoaded extends TodoState {
  final List<Todo> todos;

  TodosLoaded([this.todos = const []]) : super([todos]);
  @override
  String toString() => 'TodosLoaded { todos: $todos }';
}
