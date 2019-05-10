import 'package:bloc/bloc.dart';

import 'todo_event.dart';
import 'todo_model.dart';
import 'todo_state.dart';

class TodosBloc extends Bloc<TodoEvent, TodoState> {
  @override
  TodoState get initialState => TodosLoaded();

  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
    if (event is AddTodo) {
      // List<Todo> todos = [Todo(title: "hello", isCheckmark: false)];
      final List<Todo> updatedTodos =
          List.from((currentState as TodosLoaded).todos)..add(event.todo);
      yield TodosLoaded(updatedTodos);
    }
  }
}
