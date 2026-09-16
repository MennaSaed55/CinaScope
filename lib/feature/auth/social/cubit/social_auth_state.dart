import 'package:firebase_auth/firebase_auth.dart';
abstract class SocialAuthState {
  const SocialAuthState();

  const factory SocialAuthState.initial() = _Initial;
  const factory SocialAuthState.loading() = _Loading;
  const factory SocialAuthState.success(UserCredential user) = _Success;
  const factory SocialAuthState.error(String message) = _Error;
}

class _Initial extends SocialAuthState { const _Initial(); }
class _Loading extends SocialAuthState { const _Loading(); }
class _Success extends SocialAuthState {
  final UserCredential user;
  const _Success(this.user);
}
class _Error extends SocialAuthState {
  final String message;
  const _Error(this.message);
}