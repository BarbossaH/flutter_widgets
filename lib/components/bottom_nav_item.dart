import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mynotes/config/app_enum.dart';

class MyBottomNavItem extends StatelessWidget {
  final String iconSvg;
  final Menus curIndex;
  final Menus itemName;
  final VoidCallback onPressed;
  const MyBottomNavItem({
    super.key,
    required this.iconSvg,
    required this.curIndex,
    required this.itemName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: IconButton(
      icon: SvgPicture.asset(
        iconSvg,
        colorFilter: ColorFilter.mode(
            curIndex == itemName ? Colors.black : Colors.black.withOpacity(0.3),
            BlendMode.srcIn),
      ),
      onPressed: onPressed,
    ));
  }
}
