import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Reprocitory/api/Loginscreen/loginscreen.dart';
import '../../Reprocitory/modelclass/LoginScreen.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late LoginModel logIn;
  LoginApi logInApi=LoginApi();
  LoginBloc() : super(LoginInitial()) {
    on<FetchLogin>((event, emit) async{
      emit(LoginblocLoding());
      try {
        logIn =await logInApi.login(event.user,event.password);
        emit(LoginblocLoded());
      } catch (e) {
        print(e);
        emit(LoginblocError());
      }
    });
  }
}
