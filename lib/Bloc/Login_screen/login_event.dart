part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}
class FetchLogin extends LoginEvent{

  final String user;
  final String password;

  FetchLogin({required this.password,required this.user,});
}