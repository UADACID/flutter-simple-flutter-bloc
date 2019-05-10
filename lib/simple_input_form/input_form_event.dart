import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class InputFormEvent extends Equatable {
  InputFormEvent([List props = const []]) : super(props);
}

class OnChangeInputForm extends InputFormEvent {
  final String username;

  OnChangeInputForm({this.username}) : super([username]);

  @override
  String toString() => 'AddTodo { todo: $username }';
}
