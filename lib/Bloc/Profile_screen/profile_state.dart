part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}
class ProfileblocLoading extends ProfileState {}
class ProfileblocLoaded extends ProfileState {}
class ProfileblocError extends ProfileState {}
