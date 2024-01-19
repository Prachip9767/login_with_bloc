import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_bloc/events/login_events.dart';
import 'package:login_with_bloc/service/login_api.dart';
import 'package:login_with_bloc/utils/state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationRepository authenticationRepository;

  LoginBloc({required this.authenticationRepository}) : super(LoginState()) {
    on<LoginUsernameChanged>((event, emit) {
      emit(state.copyWith(username: event.username));
    });
    on<LoginPasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<LoginButtonPressed>(_onLoginSubmitted);
  }

  void _onLoginSubmitted(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    try {
      final result = await authenticationRepository.login(
        event.username,
        event.password,
      );

      if (result) {
        emit(state.copyWith(formSubmittedSuccessfully: true));
        print('true');
      } else {
        emit(state.copyWith(formSubmittedSuccessfully: false));
      }
    } catch (error) {
      emit(state.copyWith(formSubmittedSuccessfully: false));
    }
  }
}
