// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color foreColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final String fontFamily;

  const CustomTextWidget(
      {Key? key,
      required this.text,
      required this.foreColor,
      required this.fontSize,
      required this.fontWeight,
      required this.fontFamily,
      required this.textAlign
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: foreColor,
        fontWeight: fontWeight,
      ),
    );
  }
}
