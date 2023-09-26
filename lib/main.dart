import 'package:flutter/material.dart';
import 'package:mynotes/pages/home_page.dart';
import 'package:mynotes/pages/login_page.dart';
import 'package:mynotes/pages/main_page.dart';
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
          scaffoldBackgroundColor: AppColors.background),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
