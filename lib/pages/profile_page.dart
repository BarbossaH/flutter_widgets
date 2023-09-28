import 'package:flutter/material.dart';
import 'package:mynotes/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset(
          'assets/temp/user1.png',
          width: 90,
          height: 90,
        ),
        SizedBox(
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
        SizedBox(
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
