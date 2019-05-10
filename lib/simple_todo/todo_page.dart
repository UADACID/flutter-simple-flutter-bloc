import 'package:bloc_flutter_example/simple_todo/todo_bloc.dart';
import 'package:bloc_flutter_example/simple_todo/todo_event.dart';
import 'package:bloc_flutter_example/simple_todo/todo_model.dart';
import 'package:bloc_flutter_example/simple_todo/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TodosBloc _counterBloc = BlocProvider.of<TodosBloc>(context);
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: textEditingController,
              ),
            ),
            RaisedButton(
              onPressed: () {
                final String value = textEditingController.text;
                if (value.length != 0) {
                  _counterBloc.dispatch(
                      AddTodo(Todo(title: value, isCheckmark: false)));
                  textEditingController.text = '';
                }
              },
              child: Text('Tambahkan'),
            ),
            BlocBuilder(
              bloc: _counterBloc,
              builder: (BuildContext context, state) {
                print(state);
                if (state is TodosLoaded) {
                  final todos = state.todos;
                  return Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(todos[index].title),
                            ),
                          ),
                        );
                      },
                      itemCount: todos.length,
                    ),
                  );
                }
                return Text('kosong');
              },
            ),
          ],
        ),
      ),
    );
  }
}
