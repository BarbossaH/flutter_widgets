import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        // border: InputBorder.none,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
