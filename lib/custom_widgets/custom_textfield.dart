import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinText;
  final Icon iconData;
  final bool isPasswordTextfiled;

  const AppTextField(
      {super.key,
      required this.controller,
      required this.hinText,
      required this.iconData, required this.isPasswordTextfiled});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText:isPasswordTextfiled? true:false,
      decoration: InputDecoration(
        hintText: hinText,
        prefixIcon: iconData,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide.none, // Remove default border
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
      ),
    );
  }
}
