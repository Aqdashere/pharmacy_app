import 'package:flutter/material.dart';
import 'package:pharmacy_app_ui/utils/routes/routes_names.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, RoutesName.verifyCodeScreen);
          },
          child: const Text('Create Account Screen'),
        ),
      ),
    );
  }
}
