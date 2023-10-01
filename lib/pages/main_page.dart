import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mynotes/components/bottom_nav_item.dart';
import 'package:mynotes/config/app_enum.dart';
import 'package:mynotes/config/app_icons.dart';
import 'package:mynotes/pages/home_page.dart';
import 'package:mynotes/pages/profile_page.dart';
import 'package:mynotes/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Bottom Navigation Container'),
        // ),
        body: pages[currentIndex.index],
        // body: const Center(child: Text('Center Text')),
        bottomNavigationBar: MyBottomNavigation(
          curIndex: currentIndex,
          onTap: (value) => setState(() {
            currentIndex = value;
          }),
        )
        //  BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: SvgPicture.asset(AppIcons.icHome), label: AppStrings.home),

        //     BottomNavigationBarItem(
        //         icon: SvgPicture.asset(AppIcons.icFavorite),
        //         label: AppStrings.favorites),

        //     BottomNavigationBarItem(
        //         icon: SvgPicture.asset(AppIcons.icAdd), label: AppStrings.add),
        //     BottomNavigationBarItem(
        //         icon: SvgPicture.asset(AppIcons.icMessage),
        //         label: AppStrings.messages),
        //     BottomNavigationBarItem(
        //         icon: SvgPicture.asset(AppIcons.icUser), label: AppStrings.user),

        //     // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     // BottomNavigationBarItem(
        //     //     icon: Icon(Icons.favorite), label: 'Favorite'),
        //     // BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Post')
        //   ],
        //   // onTap: (value) {
        //   //   print(value);
        //   // },
        //   currentIndex: currentIndex,
        //   onTap: (index) => {
        //     // print(value)
        //     setState(() {
        //       currentIndex = index;
        //     })
        //   },
        //   type: BottomNavigationBarType.fixed,
        //   // type: BottomNavigationBarType.shifting,
        //   showSelectedLabels: false,
        //   showUnselectedLabels: false,
        //   backgroundColor: AppColors.primary,
        // ),
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

class MyBottomNavigation extends StatelessWidget {
  final Menus curIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation(
      {super.key, required this.onTap, required this.curIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 0,
            right: 0,
            child: Container(
              height: 72,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(
                children: [
                  MyBottomNavItem(
                    iconSvg: AppIcons.icHome,
                    curIndex: curIndex,
                    itemName: Menus.home,
                    onPressed: () => onTap(Menus.home),
                  ),
                  // Expanded(
                  //     child: IconButton(
                  //   icon: SvgPicture.asset(
                  //     AppIcons.icHome,
                  //     colorFilter: ColorFilter.mode(
                  //         curIndex == Menus.home
                  //             ? Colors.black
                  //             : Colors.black.withOpacity(0.3),
                  //         BlendMode.srcIn),
                  //   ),
                  //   onPressed: () {
                  //     onTap(Menus.home);
                  //   },
                  // )),
                  MyBottomNavItem(
                    iconSvg: AppIcons.icFavorite,
                    curIndex: curIndex,
                    itemName: Menus.favorite,
                    onPressed: () => onTap(Menus.favorite),
                  ),

                  const Spacer(),
                  MyBottomNavItem(
                    iconSvg: AppIcons.icMessage,
                    curIndex: curIndex,
                    itemName: Menus.messages,
                    onPressed: () => onTap(Menus.messages),
                  ),

                  MyBottomNavItem(
                    iconSvg: AppIcons.icUser,
                    curIndex: curIndex,
                    itemName: Menus.user,
                    onPressed: () => onTap(Menus.user),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColors.primary, shape: BoxShape.circle),
                width: 54,
                height: 54,
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  AppIcons.icAdd,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
