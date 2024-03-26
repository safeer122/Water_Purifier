part of 'customer_bloc.dart';

@immutable
abstract class CustomerState {}

class CustomerInitial extends CustomerState {}
class CustomerblocLoading extends CustomerState {}
class CustomerblocLoaded extends CustomerState {}
class CustomerblocError extends CustomerState {}


