import 'package:flutter/material.dart';
import 'package:mynotes/pages/edit_profile.dart';
import 'package:mynotes/pages/home_page.dart';
import 'package:mynotes/pages/login_page.dart';
import 'package:mynotes/pages/main_page.dart';
import 'package:mynotes/pages/profile_page.dart';
import 'package:mynotes/pages/test_page.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => const MainPage(),
        '/test': (context) => const TestPage(),
        '/profile': (context) => const ProfilePage(),
        '/edit_profile': (context) => const EditProfile(),
      },
    );
  }
}
