import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';

class CinaScopeApp extends StatelessWidget {
  const CinaScopeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.registerScreen,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
