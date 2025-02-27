part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginUser extends AuthEvent {
  final String email;
  final String password;

  const LoginUser({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

class SignupUser extends AuthEvent {
  final String email;
  final String password;
  final String name;

  const SignupUser(
      {required this.email, required this.password, required this.name});

  @override
  List<Object> get props => [email, password, name];
}

class SendOTP extends AuthEvent {
  final String email;

  const SendOTP({required this.email});

  @override
  List<Object> get props => [email];
}

class VerifyOTP extends AuthEvent {
  final String email;
  final String otp;

  const VerifyOTP({required this.email, required this.otp});

  @override
  List<Object> get props => [email, otp];
}
