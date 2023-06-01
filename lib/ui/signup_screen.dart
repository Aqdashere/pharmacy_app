import 'package:flutter/material.dart';
import 'package:pharmacy_app_ui/utils/routes/routes_names.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, RoutesName.loginScreen);
          },
          child: const Text('Sign Up Screen'),
        ),
      ),
    );
  }
}
