import 'package:flutter/material.dart';
import 'package:mynotes/config/app_routes.dart';
import 'package:mynotes/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background,
          brightness: Brightness.dark),
      // home: TestPage(),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
