// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import '../../Repo/ColorLibrary.dart';

class CustomButtonWidgetLite extends StatefulWidget {
  CustomButtonWidgetLite(
      {Key? key,
      required this.isLoading,
      required this.width,
      required this.height,
      required this.text,
      required this.onTap,
      required this.textColor,
      this.onHover})
      : super(key: key);

  final bool isLoading;
  final double width;
  final double height;
  final String text;
  final Color textColor;
  final Function()? onTap;
  final Function(ValueKey bool)? onHover;

  @override
  State<CustomButtonWidgetLite> createState() => _CustomButtonWidgetLiteState();
}

class _CustomButtonWidgetLiteState extends State<CustomButtonWidgetLite> {
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
            color: Colors.transparent,
            border: Border.all(
            color: widget.textColor, // Set the border color here
            width: 1, // Set the border width
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: !widget.isLoading ? Text(
            widget.text,
            style: TextStyle(
                fontSize: 11,
                color: widget.textColor,
                fontWeight: FontWeight.bold),
          ) : Center(
              child: SizedBox(
                height: 10,
                width: 10,
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      widget.textColor),
                ),
              )),
        ),
      );

  }
}
