part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class Success extends SignUpState {}

class FailSignUp extends SignUpState {}
