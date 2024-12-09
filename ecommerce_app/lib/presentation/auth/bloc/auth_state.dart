part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSucess extends AuthState {}

final class AuthFail extends AuthState {}

final class CreateAccountNavigationState extends AuthState {}
