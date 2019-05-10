import 'package:bloc/bloc.dart';
import 'package:bloc_flutter_example/simple_input_form/input_form_event.dart';

class InputFormBloc extends Bloc<InputFormEvent, String> {
  @override
  String get initialState => '';

  @override
  Stream<String> mapEventToState(InputFormEvent event) async* {
    if (event is OnChangeInputForm) {
      yield event.username;
    }
  }
}
