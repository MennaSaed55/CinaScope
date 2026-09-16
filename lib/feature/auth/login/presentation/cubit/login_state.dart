import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginState {
  const LoginState();

  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(UserCredential user) = _Success;
  const factory LoginState.error(String message) = _Error;
}

class _Initial extends LoginState { const _Initial(); }
class _Loading extends LoginState { const _Loading(); }
class _Success extends LoginState {
  final UserCredential user;
  const _Success(this.user);
}
class _Error extends LoginState {
  final String message;
  const _Error(this.message);
}