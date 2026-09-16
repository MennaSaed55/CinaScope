import 'package:CineScope/feature/auth/social/repo/social_and-anon_auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../services/auth_service.dart';

class SocialAndAnonAuthRepoImpl implements SocialAndAnonAuthRepo {
  final AuthService authService;

  SocialAndAnonAuthRepoImpl({required this.authService});

  @override
  Future<UserCredential?> signInWithGoogle() {
    return authService.signInWithGoogle();
  }

  @override
  Future<UserCredential?> signInAnonymously() {
    return authService.signInAnonymously();
  }
}
