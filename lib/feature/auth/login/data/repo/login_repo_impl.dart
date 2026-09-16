import 'package:firebase_auth/firebase_auth.dart';

import '../../../services/auth_service.dart';
import 'login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  final AuthService authService;

  LoginRepoImpl({required this.authService});

  @override
  Future<UserCredential?> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    return authService.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}