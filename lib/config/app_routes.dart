import 'package:mynotes/pages/edit_profile.dart';
import 'package:mynotes/pages/home_page.dart';
import 'package:mynotes/pages/login_page.dart';
import 'package:mynotes/pages/main_page.dart';
import 'package:mynotes/pages/profile_page.dart';
import 'package:mynotes/pages/test_page.dart';

class AppRoutes {
  static final pages = {
    AppRoutes.login: (context) => const LoginPage(),
    AppRoutes.home: (context) => const HomePage(),
    AppRoutes.main: (context) => const MainPage(),
    AppRoutes.test: (context) => const TestPage(),
    AppRoutes.profile: (context) => const ProfilePage(),
    AppRoutes.editProfile: (context) => const EditProfile(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const test = '/test';
  static const profile = '/profile';
  static const editProfile = '/edit_profile';
}
