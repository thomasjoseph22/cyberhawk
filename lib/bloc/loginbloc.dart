import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(GroceryBannerInitial()) {
    on<GetLoginEvent>(_getLoginEvent);
  }
  Future<FutureOr<void>> _getLoginEvent(
      GetLoginEvent event, Emitter<LoginState> emit) async {
    emit(Loading());

    if (event.password == "123" && event.username == "Thomas") {
      emit(LoginSuccess());
    } else {
      emit(LoginError());
    }
  }
}

class LoginEvent {}

//get all banners
class GetLoginEvent extends LoginEvent {
  final String password;
  final String username;
  GetLoginEvent({required this.password, required this.username});
  @override
  List<Object> get props => [];
}

class LoginState {}

class GroceryBannerInitial extends LoginState {}

class Loading extends LoginState {}

class LoginSuccess extends LoginState {
  LoginSuccess();
}

class LoginError extends LoginState {}
