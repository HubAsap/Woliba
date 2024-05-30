import 'package:flutter/material.dart';
import 'package:woliba/widgets/ButtonWidgetLite.dart';
import '../../Repo/ColorLibrary.dart';
import '../../repo/ImageLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;
    double screenHeight = MediaQuery. of(context). size. height;
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 80),
                child: CustomTextWidget(
                  text: "Likes You",
                  foreColor: ColorLibrary.foreColorDark,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "",
                  textAlign: TextAlign.left,
                ),),
              SizedBox(
                width: screenWidth,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        ImageLibrary.noLove,
                        height: 180,
                      ),
                    ),
                    CustomTextWidget(
                      text: "No likes yet - we're here to help",
                      foreColor: ColorLibrary.foreColorDark,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "",
                      textAlign: TextAlign.left,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: CustomTextWidget(
                        text: "We can get you seen by more daters, sooner",
                        foreColor: ColorLibrary.foreColorDark,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: "",
                        textAlign: TextAlign.left,
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: CustomButtonWidget(
                          isLoading: false,
                          width: screenWidth - 40,
                          height: 40,
                          text: "Boost Your Profile",
                          onTap: (){

                          },
                          btnBGcolor: ColorLibrary.primaryColor,
                          textColor: ColorLibrary.foreColorLight),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: CustomButtonWidgetLite(
                          isLoading: false,
                          width: screenWidth - 40,
                          height: 40,
                          text: "Upgrade to pro",
                          onTap: (){

                          },
                          textColor: ColorLibrary.foreColorDark),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
