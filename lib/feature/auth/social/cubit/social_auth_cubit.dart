import 'package:flutter_bloc/flutter_bloc.dart';
import '../repo/social_and-anon_auth_repo.dart';
import 'social_auth_state.dart';

class SocialAuthCubit extends Cubit<SocialAuthState> {
  final SocialAndAnonAuthRepo socialAndAnonAuthRepo;

  SocialAuthCubit(this.socialAndAnonAuthRepo) : super(const SocialAuthState.initial());

  Future<void> signInWithGoogle() async {
    emit(const SocialAuthState.loading());
    try {
      final userCredential = await socialAndAnonAuthRepo.signInWithGoogle();
      if (userCredential != null) {
        emit(SocialAuthState.success(userCredential));
      } else {
        emit(const SocialAuthState.initial()); // Cancelled by user
      }
    } catch (e) {
      emit(SocialAuthState.error(e.toString()));
    }
  }

  Future<void> signInAnonymously() async {
    emit(const SocialAuthState.loading());
    try {
      final userCredential = await socialAndAnonAuthRepo.signInAnonymously();
      if (userCredential != null) {
        emit(SocialAuthState.success(userCredential));
      } else {
        emit(const SocialAuthState.error('Anonymous sign in failed'));
      }
    } catch (e) {
      emit(SocialAuthState.error(e.toString()));
    }
  }
}