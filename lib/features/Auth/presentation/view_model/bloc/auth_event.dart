part of 'auth_bloc.dart';

abstract class AuthEvent {}

class LoginEvent {
  final String email;
  final String password;
  LoginEvent({
    required this.email,
    required this.password,
  });
}

class RegisterEvent {
  final String username;
  final String email;
  final String phone;
  final int gender;
  final String password;
  final String matchPass;
  RegisterEvent({
    required this.username,
    required this.email,
    required this.phone,
    required this.gender,
    required this.password,
    required this.matchPass,
  });
}
