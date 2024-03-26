import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Reprocitory/api/Profile_screen/Profile_screen.dart';
import '../../Reprocitory/modelclass/Profile.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  late ProfileModel profile;
  ProfileApi profileApi=ProfileApi();
  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileEvent>((event, emit) async {
      emit(ProfileblocLoading());
      try {
        profile =await profileApi.profileapi();
        emit(ProfileblocLoaded());
      } catch (e) {
        print(e);
        emit(ProfileblocError());
      }
    });
  }
}
