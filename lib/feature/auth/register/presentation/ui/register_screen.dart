import 'package:flutter/material.dart';

import '../../../../../core/routes/app_routes.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Column(
        children: [
          const Center(child: Text('Register Screen')),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, AppRoutes.registerScreen);
          }, icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
