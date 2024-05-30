import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:woliba/Repo/ColorLibrary.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBack;
  final VoidCallback onMore;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.onBack,
    required this.onMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      backgroundColor: ColorLibrary.bgColor2,
      leading: IconButton(
        icon: const Icon(FeatherIcons.chevronLeft, color: ColorLibrary.foreColorDark),
        onPressed: onBack,
      ),
      title: Text(title, style: const TextStyle(color: ColorLibrary.foreColorDark),),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(FeatherIcons.moreHorizontal, color: ColorLibrary.foreColorDark),
          onPressed: onMore,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
