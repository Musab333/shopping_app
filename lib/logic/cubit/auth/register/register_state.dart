part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterSuccessState extends RegisterState {
  LoginModel? loginModel;

  RegisterSuccessState(this.loginModel);
}

class RegisterErrorState extends RegisterState {
  final String? error;

  RegisterErrorState({this.error});
}

class RegisterChangePasswordVisibilityState extends RegisterState {}
