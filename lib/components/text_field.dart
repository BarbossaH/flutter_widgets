import 'package:flutter/material.dart';
import 'package:mynotes/styles/app_colors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle: const TextStyle(color: Colors.white),
        // border: InputBorder.none,
        // border: const OutlineInputBorder(
        border: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(12))),

        filled: true,
        fillColor: AppColors.fliedColor,
      ),
    );
  }
}
