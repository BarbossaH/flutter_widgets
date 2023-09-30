import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  final double radius;
  const UserAvatar({super.key, this.size = 40, this.radius = 18});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: Image.asset(
        'assets/temp/user1.png',
        width: size,
        height: size,
      ),
    );
  }
}
