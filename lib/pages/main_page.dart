import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mynotes/pages/home_page.dart';
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
              icon: SvgPicture.asset('assets/svg/ic_home.svg'), label: 'Home'),

          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_favorite.svg'),
              label: 'Favorite'),

          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_add.svg'),
              label: 'Add Post'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_messages.svg'),
              label: 'Message'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_user.svg'), label: 'User'),

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

  final pages = [
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
    Center(
      child: Text("4", style: TextStyle(color: Colors.white)),
    ),
  ];
}
