// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import '../../Repo/ColorLibrary.dart';

class IconButtonWidget extends StatefulWidget {
  IconButtonWidget(
      {Key? key,
      required this.onTap,
      required this.icon,})
      : super(key: key);

  final Icon icon;
  final Function()? onTap;

  @override
  State<IconButtonWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
      return InkWell(
        onTap: widget.onTap,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(4),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: ColorLibrary.bgColor2,
            borderRadius: BorderRadius.circular(100),
          ),
          child: widget.icon
        ),
      );

  }
}
