part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class CreateAccountNavigationEvent extends AuthEvent {}
