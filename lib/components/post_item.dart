import 'package:flutter/material.dart';
import 'package:mynotes/components/user_avatar.dart';
import 'package:mynotes/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  final String des;
  const PostItem({super.key, required this.user, required this.des});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      // padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          Row(
            children: [
              const UserAvatar(
                size: 60,
                radius: 12,
              ),
              const SizedBox(
                width: 9,
              ),
              Text(
                user,
                style: AppText.subtitle3,
                // style: TextStyle(color: Colors.white),
              )
            ],
          ),

          Image.asset('assets/temp/post1.jpg'),
          const SizedBox(
            height: 9,
          ),
          Align(
            alignment: Alignment.centerLeft,
            // child: Container(
            //   decoration: BoxDecoration(
            //       border: Border.all(color: Colors.red, width: 2),
            //       borderRadius: BorderRadius.circular(10)),
            child: Text(
              des,
              style: AppText.subtitle3,
              // textAlign: TextAlign.left,
            ),
          ),
          // const SizedBox(
          //   height: 9,
          // ),
          // ),
        ],
      ),
    );
  }
}
