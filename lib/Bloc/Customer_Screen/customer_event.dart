part of 'customer_bloc.dart';

@immutable
abstract class CustomerEvent {}
class FetchCustomer extends CustomerEvent{
}