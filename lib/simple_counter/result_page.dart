import 'package:bloc_flutter_example/simple_counter/counter_bloc.dart';
import 'package:bloc_flutter_example/simple_counter/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultPage extends StatelessWidget {
  final String title;

  ResultPage({this.title});

  @override
  Widget build(BuildContext context) {
    final CounterBloc _counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Result $title'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BlocBuilder(
              bloc: _counterBloc,
              builder: (BuildContext context, state) {
                return Text('result = $state');
              },
            ),
            IconButton(
              icon: Icon(Icons.assignment_returned),
              onPressed: () {
                _counterBloc.dispatch(CounterEvent.decrement);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return ResultPage(
              title: "dari detail",
            );
          }));
        },
      ),
    );
  }
}
