import 'package:flutter/material.dart';
import '../../Repo/ColorLibrary.dart';
import '../../widgets/TextWidget.dart';

class AlertScreen extends StatefulWidget {
  final String text1;
  final String text2;
  final String imagePath;
  final String buttonText;
  final Function()? buttonAction;

  const AlertScreen({
    Key? key,
    required this.text1,
    required this.text2,
    required this.imagePath,
    required this.buttonText,
    required this.buttonAction,
  }) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery. of(context). size. height;
    double screenWidth = MediaQuery. of(context). size. width;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: screenHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 180),
                    child: CustomTextWidget(
                      text: widget.text1,
                      foreColor: ColorLibrary.foreColorDark,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Simonetta",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20, top: 80, bottom: 20),
                    child: CustomTextWidget(
                      text: widget.text2,
                      foreColor: ColorLibrary.foreColorDark,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Simonetta",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 400,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              widget.imagePath,
              height: 200,
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: widget.buttonAction,
        child: Container(
          height: 100,
          color: ColorLibrary.primaryColor,
          child: Center(
            child: CustomTextWidget(
              text: widget.buttonText,
              foreColor: ColorLibrary.foreColorLight,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "",
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
