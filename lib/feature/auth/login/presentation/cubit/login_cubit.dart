import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(const LoginState.loading());
    try {
      final userCredential = await loginRepo.loginWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential != null) {
        emit(LoginState.success(userCredential));
      } else {
        emit(const LoginState.error('Login failed'));
      }
    } catch (e) {
      emit(LoginState.error(e.toString()));
    }
  }
}