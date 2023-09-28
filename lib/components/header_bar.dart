import 'package:flutter/material.dart';
import 'package:mynotes/styles/app_colors.dart';
import 'package:mynotes/styles/app_text.dart';

class HeaderBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions; //could be null
  const HeaderBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      // elevation: 0,
      title: Text(
        title,
        style: AppText.header1,
      ),
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(64);
}
