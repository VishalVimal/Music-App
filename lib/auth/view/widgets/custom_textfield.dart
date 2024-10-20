import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController
      controller; //to extract the text from the text field
  final bool isObscureText;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        // to validate the text field,
        // trim is used to remove the spaces so that user can't just enter only spaces
        if (value!.trim().isEmpty) {
          return 'Please enter a valid $hintText';
        }
        return null;
      }, 
      obscureText: isObscureText, // to hide the text
    );
  }
}
