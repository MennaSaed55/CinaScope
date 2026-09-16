import 'package:firebase_auth/firebase_auth.dart';

abstract class SocialAndAnonAuthRepo {
  Future<UserCredential?> signInWithGoogle();
  Future<UserCredential?> signInAnonymously();
}