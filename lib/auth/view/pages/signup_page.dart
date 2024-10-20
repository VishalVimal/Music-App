import 'package:client/auth/view/widgets/auth_gradient_button.dart';
import 'package:client/auth/view/widgets/custom_textfield.dart';
import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/cupertino.dart';
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                hintText: 'Name',
              ),
              const SizedBox(height: 15),
              CustomTextField(
                hintText: 'Email',
              ),
              const SizedBox(height: 15),
              CustomTextField(
                hintText: 'Password',
              ),
              const SizedBox(height: 20),
              AuthGradientButton(),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                        color: Pallete.gradient2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]))
            ],
          ),
        ));
  }
}
