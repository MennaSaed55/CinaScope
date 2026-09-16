import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService {
  User? get currentUser;
  Stream<User?> get authStateChanges;

  Future<UserCredential?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserCredential?> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserCredential?> signInWithGoogle();
  Future<UserCredential?> signInAnonymously();
  Future<void> signOut();

}