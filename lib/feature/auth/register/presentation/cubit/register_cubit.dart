import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/register_repo.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo registerRepo;

  RegisterCubit(this.registerRepo) : super(const RegisterState.initial());

  Future<void> register({
    required String email,
    required String password,
  }) async {
    emit(const RegisterState.loading());
    try {
      final userCredential = await registerRepo.registerWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential != null) {
        emit(RegisterState.success(userCredential));
      } else {
        emit(const RegisterState.error('Failed to register user'));
      }
    } catch (e) {
      emit(RegisterState.error(e.toString()));
    }
  }
}