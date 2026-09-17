import 'package:CineScope/feature/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../feature/auth/register/presentation/cubit/register_cubit.dart';
import '../../feature/auth/register/presentation/ui/register_screen.dart';
import '../di/service_locator.dart';
import 'app_routes.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
          builder: (context) =>  SplashScreen(),
        );
      case AppRoutes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => RegisterCubit(getIt()),
            child: const RegisterScreen(),
          ),
        );
    }
  }
}
