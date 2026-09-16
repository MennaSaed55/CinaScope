import 'package:firebase_auth/firebase_auth.dart';

abstract class RegisterState {
  const RegisterState();

  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.success(UserCredential user) = _Success;
  const factory RegisterState.error(String message) = _Error;
}

class _Initial extends RegisterState { const _Initial(); }
class _Loading extends RegisterState { const _Loading(); }
class _Success extends RegisterState {
  final UserCredential user;
  const _Success(this.user);
}
class _Error extends RegisterState {
  final String message;
  const _Error(this.message);
}