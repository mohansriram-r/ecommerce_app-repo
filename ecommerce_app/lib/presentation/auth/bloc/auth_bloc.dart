import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<CreateAccountNavigationEvent>(createAccountNavigation);
  }

  FutureOr<void> createAccountNavigation(
      CreateAccountNavigationEvent event, Emitter<AuthState> emit) {
    emit(CreateAccountNavigationState());
  }
}
