part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginblocLoding extends LoginState {}
class LoginblocLoded extends LoginState {}
class LoginblocError extends LoginState {}