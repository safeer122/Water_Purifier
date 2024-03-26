import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Reprocitory/api/Customer_screen/Customer_screen.dart';
import '../../Reprocitory/modelclass/Customermodel.dart';


part 'customer_event.dart';
part 'customer_state.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  late List<Customermodel> customer;
  CustomerApi customerApi=CustomerApi();
  CustomerBloc() : super(CustomerInitial()) {
    on<FetchCustomer>((event, emit) async {
      emit(CustomerblocLoading());
      try {
        customer =await customerApi.customerapi();
        emit(CustomerblocLoaded());
      } catch (e) {
        print(e);
        emit(CustomerblocError());
      }
    });
  }
}
