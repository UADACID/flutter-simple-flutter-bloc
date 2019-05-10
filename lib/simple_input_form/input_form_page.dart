import 'package:bloc_flutter_example/simple_input_form/input_form_bloc.dart';
import 'package:bloc_flutter_example/simple_input_form/input_form_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final InputFormBloc _counterBloc = BlocProvider.of<InputFormBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('simple form'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              onChanged: (String value) {
                _counterBloc.dispatch(OnChangeInputForm(username: value));
              },
            ),
            BlocBuilder(
              bloc: _counterBloc,
              builder: (BuildContext context, state) {
                return Text('text: $state');
              },
            )
          ],
        ),
      ),
    );
  }
}
