import 'package:flutter/material.dart';
import 'package:pharmacy_app_ui/utils/routes/routes_names.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, RoutesName.createAccountScreen);
          },
          child: const Text('Login Screen'),
        ),
      ),
    );
  }
}
