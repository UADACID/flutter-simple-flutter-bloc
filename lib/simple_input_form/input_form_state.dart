import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class InputFormState extends Equatable {
  InputFormState([List props = const []]) : super(props);
}

class InputFormChange extends InputFormState {
  @override
  String toString() {
    return 'InputFormChange';
  }
}
