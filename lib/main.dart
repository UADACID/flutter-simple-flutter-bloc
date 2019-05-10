import 'package:bloc_flutter_example/simple_counter/counter_bloc.dart';
// import 'package:bloc_flutter_example/simple_counter/counter_page.dart';
import 'package:bloc_flutter_example/simple_input_form/input_form_bloc.dart';
// import 'package:bloc_flutter_example/simple_input_form/input_form_page.dart';
// import 'package:bloc_flutter_example/simple_input_form/input_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'simple_todo/todo_bloc.dart';
import 'simple_todo/todo_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: <BlocProvider>[
        BlocProvider<CounterBloc>(
          bloc: CounterBloc(),
        ),
        BlocProvider<InputFormBloc>(
          bloc: InputFormBloc(),
        ),
        BlocProvider<TodosBloc>(
          bloc: TodosBloc(),
        )
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: TodoPage()),
    );
  }
}
