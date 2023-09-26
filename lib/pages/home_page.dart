import 'package:flutter/material.dart';
import 'package:mynotes/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        // elevation: 0,
        title: const Text("W D"),
        centerTitle: false,
        actions: const [Icon(Icons.location_on_outlined)],
      ),
      body: const Center(
          child: Text(
        'this is home page',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
