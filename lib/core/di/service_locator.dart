import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../feature/auth/register/data/repo/register_repo.dart';
import '../../feature/auth/login/data/repo/login_repo.dart';
import '../../feature/auth/social/repo/social_and-anon_auth_repo.dart';
import '../../feature/auth/social/repo/social_and-anon_auth_repo_impl.dart';
import '../../feature/auth/services/auth_service.dart';
import '../../feature/auth/services/auth_service_impl.dart';
import '../../feature/auth/register/data/repo/register_repo_impl.dart';
import '../../feature/auth/login/data/repo/login_repo_impl.dart';

GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());

  // getIt.registerLazySingleton<AuthService>(
  //       () => AuthServiceImpl(
  //     auth: getIt<FirebaseAuth>(),
  //     googleSignIn: getIt<GoogleSignIn>(),
  //   ),
  // );
  //
  // getIt.registerLazySingleton<RegisterRepo>(
  //       () => RegisterRepoImpl(
  //     authService: getIt<AuthService>(),
  //   ),
  // );
  //
  // getIt.registerLazySingleton<LoginRepo>(
  //       () => LoginRepoImpl(
  //     authService: getIt<AuthService>(),
  //   ),
  // );
  //
  // getIt.registerLazySingleton<SocialAndAnonAuthRepo>(
  //       () => SocialAndAnonAuthRepoImpl(
  //     authService: getIt<AuthService>(),
  //   ),
  // );
}