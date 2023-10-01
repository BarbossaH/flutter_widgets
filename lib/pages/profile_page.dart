import 'package:flutter/material.dart';
import 'package:mynotes/components/header_bar.dart';
import 'package:mynotes/components/user_avatar.dart';
import 'package:mynotes/config/app_strings.dart';
import 'package:mynotes/model/user.dart';
import 'package:mynotes/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  final User user;
  const ProfilePage({super.key, required this.user});

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
              Text(AppStrings.edit),
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
              Text(AppStrings.logOut),
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
        SizedBox(
          height: 12,
        ),
        UserAvatar(
          size: 90,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          "${user.id} ${user.firstName} ${user.lastName}",
          style: AppText.header2,
        ),
        Text(
          "Her Other Name",
          style: AppText.subtitle3,
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "123",
                  style: AppText.header2,
                ),
                Text(AppStrings.followers)
              ],
            ),
            Column(
              children: [
                Text(
                  "88",
                  style: AppText.header2,
                ),
                Text(AppStrings.posts)
              ],
            ),
            Column(
              children: [
                Text(
                  "2133",
                  style: AppText.header2,
                ),
                Text(AppStrings.following)
              ],
            ),
          ],
        ),
        Divider(
          thickness: 1,
          height: 30,
          // indent: 30,
          // endIndent: 30,
        ),
      ]),
    );
  }
}
