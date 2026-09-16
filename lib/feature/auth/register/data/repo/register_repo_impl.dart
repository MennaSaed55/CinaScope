import 'package:CineScope/feature/auth/register/data/repo/register_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../services/auth_service.dart';

class RegisterRepoImpl implements RegisterRepo {
  final AuthService authService;

  RegisterRepoImpl({required this.authService});

  @override
  Future<UserCredential?> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    return authService.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}