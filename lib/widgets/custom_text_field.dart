import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {super.key,
      required this.hintText,
      required this.icon,
      this.onChanged,
      this.obscureText = false});
  final String hintText;
  final Icon icon;
  bool obscureText;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: (data) {
        if (data!.isEmpty) return 'field is required';
        return null;
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: icon,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
