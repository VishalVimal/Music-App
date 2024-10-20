import 'package:client/auth/view/widgets/auth_gradient_button.dart';
import 'package:client/auth/view/widgets/custom_textfield.dart';
import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget { // multicurosr ctrl+K
  const LoginPage({super.key, required String title});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>(); // to validate the form

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    formKey.currentState?.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form( // created a form to validate the form
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign In.',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  controller: emailController,
                  hintText: 'Email',
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  isObscureText: true,
                ),
                const SizedBox(height: 20),
                AuthGradientButton(
                  ButtonText: 'Sign In.',
                  onTap: () {
                    
                  } ,
                ),
                const SizedBox(height: 20),
                RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account? ', // \- used backslash to use ' in Don't
                        style: Theme.of(context).textTheme.titleMedium,
                        children: const [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Pallete.gradient2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]))
              ],
            ),
          ),
        ));
  }
}
