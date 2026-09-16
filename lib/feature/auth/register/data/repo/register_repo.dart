import 'package:firebase_auth/firebase_auth.dart';

abstract class RegisterRepo {
  Future<UserCredential?> registerWithEmailAndPassword({
    required String email,
    required String password,
  });
}