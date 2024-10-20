import 'package:client/auth/view/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key, required String title});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          const Text(
            'Sign Up',
            style:TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomTextField(),
        ],
      )
    );
  }
}