import 'package:flutter/material.dart';
import 'package:mynotes/components/header_bar.dart';
import 'package:mynotes/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  void handledProfileMenuSelected(ProfileMenu value, BuildContext context) {
    switch (value) {
      case ProfileMenu.edit:
        Navigator.of(context).pushNamed('/edit_profile');
        break;
      case ProfileMenu.logout:
        print('2');
        break;
    }
  }

  List<PopupMenuItem<ProfileMenu>> buildProfileMenuItems(BuildContext context) {
    return [
      const PopupMenuItem(
          value: ProfileMenu.edit,
          // onTap: () => {},
          child: Row(
            children: [
              Icon(Icons.edit),
              SizedBox(
                width: 9,
              ),
              Text('Edit'),
            ],
          )),
      const PopupMenuItem(
          // onTap:()=>{},
          value: ProfileMenu.logout,
          child: Row(
            children: [
              Icon(Icons.logout),
              SizedBox(
                width: 9,
              ),
              Text('LogOut'),
            ],
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderBar(
        title: "Profile",
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) => handledProfileMenuSelected(value, context),
            itemBuilder: (context) => buildProfileMenuItems(context),
            icon: const Icon(Icons.more_vert_rounded),
          )
          // IconButton(
          //     onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Column(children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          child: Image.asset(
            'assets/temp/user1.png',
            width: 90,
            height: 90,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Her Name",
          style: AppText.header2,
        ),
        const Text(
          "Her Other Name",
          style: AppText.subtitle3,
        ),
        const SizedBox(
          height: 12,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "123",
                  style: AppText.header2,
                ),
                Text('Followers')
              ],
            ),
            Column(
              children: [
                Text(
                  "88",
                  style: AppText.header2,
                ),
                Text('Posts')
              ],
            ),
            Column(
              children: [
                Text(
                  "2133",
                  style: AppText.header2,
                ),
                Text('Following')
              ],
            ),
          ],
        ),
        const Divider(
          thickness: 1,
          height: 30,
          // indent: 30,
          // endIndent: 30,
        ),
      ]),
    );
  }
}
