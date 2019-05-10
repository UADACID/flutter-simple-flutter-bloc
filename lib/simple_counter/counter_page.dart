import 'package:bloc_flutter_example/simple_counter/counter_bloc.dart';
import 'package:bloc_flutter_example/simple_counter/counter_event.dart';
import 'package:bloc_flutter_example/simple_counter/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc _counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder(
              bloc: _counterBloc,
              builder: (BuildContext context, state) {
                return Text('tap $state kali');
              },
            ),
            RaisedButton(
              onPressed: () {
                _counterBloc.dispatch(CounterEvent.increment);
              },
              child: Text('tambah'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return ResultPage(
              title: "dari first page",
            );
          }));
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
