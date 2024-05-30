import 'package:flutter/material.dart';

import '../Repo/ColorLibrary.dart';
import 'ButtonWidget.dart';
import 'TextWidget.dart';

class ImageCard extends StatelessWidget {
  final String imageUrl;
  final String headerText;
  final String bodyText;
  final String buttonText;
  final Color buttonForeColor;
  final Color buttonBgColor;
  final VoidCallback onPressed;

  const ImageCard({
    Key? key,
    required this.imageUrl,
    required this.headerText,
    required this.bodyText,
    required this.buttonText,
    required this.buttonForeColor,
    required this.buttonBgColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth - 80,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6), // Adjust opacity for the dark tint
              BlendMode.dstATop,
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black, // Dark tint color
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: headerText,
                foreColor: ColorLibrary.bgColor2,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: "",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              CustomTextWidget(
                text: bodyText,
                foreColor: ColorLibrary.bgColor2,
                fontSize: 14,
                fontWeight: FontWeight.normal,
                fontFamily: "",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: CustomButtonWidget(
                    isLoading: false,
                    width: screenWidth,
                    height: 40,
                    text: buttonText,
                    onTap: (){

                    },
                    btnBGcolor: buttonBgColor,
                    textColor: buttonForeColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
