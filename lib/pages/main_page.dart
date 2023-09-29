import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mynotes/config/app_icons.dart';
import 'package:mynotes/config/app_strings.dart';
import 'package:mynotes/pages/home_page.dart';
import 'package:mynotes/pages/profile_page.dart';
import 'package:mynotes/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Bottom Navigation Container'),
      // ),
      body: pages[currentIndex],
      // body: const Center(child: Text('Center Text')),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icHome), label: AppStrings.home),

          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icFavorite),
              label: AppStrings.favorites),

          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icAdd), label: AppStrings.add),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icMessage),
              label: AppStrings.messages),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icUser), label: AppStrings.user),

          // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.favorite), label: 'Favorite'),
          // BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Post')
        ],
        // onTap: (value) {
        //   print(value);
        // },
        currentIndex: currentIndex,
        onTap: (index) => {
          // print(value)
          setState(() {
            currentIndex = index;
          })
        },
        type: BottomNavigationBarType.fixed,
        // type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.primary,
      ),
    );
  }

  final pages = const [
    HomePage(),
    Center(
      child: Text(
        "1",
        style: TextStyle(color: Colors.white),
      ),
    ),
    Center(
      child: Text("2", style: TextStyle(color: Colors.white)),
    ),
    Center(
      child: Text("3", style: TextStyle(color: Colors.white)),
    ),
    ProfilePage()
  ];
}
