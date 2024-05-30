// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:woliba/repo/DataLibrary.dart';

class CustomButtonWidget extends StatefulWidget {
  CustomButtonWidget({
    Key? key,
    required this.isLoading,
    required this.width,
    required this.height,
    required this.text,
    required this.onTap,
    required this.btnBGcolor,
    required this.textColor,
    this.btnIcon, // Allow null for btnIcon
    this.onHover,
  }) : super(key: key);

  final bool isLoading;
  final double width;
  final double height;
  final String text;
  final Color btnBGcolor;
  final Color textColor;
  final Icon? btnIcon; // Nullable btnIcon
  final Function()? onTap;
  final Function(ValueKey<bool>)? onHover;

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.btnBGcolor,
          borderRadius: BorderRadius.circular(DataLibrary.borderRadius),
        ),
        child: !widget.isLoading
            ? Row(
          mainAxisAlignment: widget.btnIcon != null ? MainAxisAlignment.start : MainAxisAlignment.center,
          // Add condition for btnIcon being non-null
          children: [
            if (widget.btnIcon != null) widget.btnIcon!,
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 11,
                color: widget.textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
            : Center(
          child: SizedBox(
            height: 10,
            width: 10,
            child: CircularProgressIndicator(
              strokeWidth: 4,
              valueColor: AlwaysStoppedAnimation<Color>(
                widget.textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
