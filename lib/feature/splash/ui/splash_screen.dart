import 'package:CineScope/core/utils/app_assets.dart';
import 'package:CineScope/core/utils/app_typography.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(AppAssets.blur),
            Column(
              children: [
                Image.asset(AppAssets.logo),
                Text("CINA SCOPE", style: AppTypography.headline),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
