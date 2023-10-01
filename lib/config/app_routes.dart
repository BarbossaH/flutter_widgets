import 'package:mynotes/model/user.dart';
import 'package:mynotes/pages/edit_profile.dart';
import 'package:mynotes/pages/home_page.dart';
import 'package:mynotes/pages/login_page.dart';
import 'package:mynotes/pages/main_page.dart';
import 'package:mynotes/pages/nearby_page.dart';
import 'package:mynotes/pages/profile_page.dart';
import 'package:mynotes/pages/test_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => LoginPage(),
    home: (context) => const HomePage(),
    main: (context) => MainPage(
        user: User(
            1, "firstName", "lastName", "mobile", "birthday", "gender", false)),
    test: (context) => const TestPage(),
    profile: (context) => ProfilePage(
        user: User(
            1, "firstName", "lastName", "mobile", "birthday", "gender", false)),
    editProfile: (context) => const EditProfile(),
    nearBy: (context) => const NearByPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const test = '/test';
  static const profile = '/profile';
  static const editProfile = '/edit_profile';
  static const nearBy = '/near_by';
}
