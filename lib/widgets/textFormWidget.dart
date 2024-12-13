import 'package:flutter/material.dart';

class TextFormWidgetCustom extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final TextInputType? textInputType;
  final bool isPassword;

  const TextFormWidgetCustom({
    Key? key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.textInputType = TextInputType.text,
    this.isPassword = false, required Function(dynamic value) onSaved, required bool obscureText, required String labelText, required String? Function(dynamic value) validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: isPassword,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
