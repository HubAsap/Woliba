import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';

import '../../Repo/ColorLibrary.dart';
import '../../widgets/CustomAppBar.dart';
import '../../widgets/TextWidget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool positive1 = false;
  bool positive2 = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
        appBar: CustomAppBar(
          title: 'Settings',
          onBack: () {
            Navigator.pop(context);
          },
          onMore: () {
            // Handle more button pressed
          },
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: CustomTextWidget(
                    text: "Profile",
                    foreColor: ColorLibrary.foreColorMid,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "",
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    width: screenWidth,
                    height: 0.5,
                    color: ColorLibrary.bgColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const CustomTextWidget(
                    text: "Pause",
                    foreColor: ColorLibrary.foreColorDark,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "",
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: 60,
                    child: AnimatedToggleSwitch<bool>.dual(
                      current: positive1,
                      first: false,
                      second: true,
                      spacing: 10.0,
                      style: ToggleStyle(
                        borderColor: positive1 ? ColorLibrary.primaryColor : ColorLibrary.foreColorMid,
                      ),
                      borderWidth: 1.0,
                      height: 30,
                      onChanged: (b) => setState(() => positive1 = b),
                      styleBuilder: (b) =>
                          ToggleStyle(indicatorColor: b ? ColorLibrary.primaryColor : ColorLibrary.foreColorMid),
                    ),
                  ),
                ],),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    child: const CustomTextWidget(
                      text: "Pausing prevents your profile from being shown to new people. You can still chat with your current matches",
                      foreColor: ColorLibrary.foreColorMid,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontFamily: "",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    width: screenWidth,
                    height: 0.5,
                    color: ColorLibrary.bgColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomTextWidget(
                      text: "Show Last Active Status",
                      foreColor: ColorLibrary.foreColorDark,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: "",
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      width: 60,
                      child: AnimatedToggleSwitch<bool>.dual(
                        current: positive2,
                        first: false,
                        second: true,
                        spacing: 10.0,
                        style: ToggleStyle(
                          borderColor: positive2 ? ColorLibrary.primaryColor : ColorLibrary.foreColorMid,
                        ),
                        borderWidth: 1.0,
                        height: 30,
                        onChanged: (b) => setState(() => positive2 = b),
                        styleBuilder: (b) =>
                            ToggleStyle(indicatorColor: b ? ColorLibrary.primaryColor : ColorLibrary.foreColorMid),
                      ),
                    ),
                  ],),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    child: const CustomTextWidget(
                      text: "People viewing your profile can see your just active status, and you can see theirs. Your active status, and you can see theirs. your matches won't be shown your last active status.",
                      foreColor: ColorLibrary.foreColorMid,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontFamily: "",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    width: screenWidth,
                    height: 0.5,
                    color: ColorLibrary.bgColor,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: CustomTextWidget(
                    text: "Safety",
                    foreColor: ColorLibrary.foreColorMid,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "",
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    width: screenWidth,
                    height: 0.5,
                    color: ColorLibrary.bgColor,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextWidget(
                          text: "Selfie Verification",
                          foreColor: ColorLibrary.foreColorDark,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "",
                          textAlign: TextAlign.left,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: CustomTextWidget(
                            text: "You're not verified yet.",
                            foreColor: ColorLibrary.foreColorMid,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontFamily: "",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  Icon(Icons.arrow_forward_ios, color: ColorLibrary.foreColorDark),
                  ],),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    width: screenWidth,
                    height: 0.5,
                    color: ColorLibrary.bgColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTextWidget(
                          text: "Block List",
                          foreColor: ColorLibrary.foreColorDark,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "",
                          textAlign: TextAlign.left,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox(
                            width: screenWidth * 0.7,
                            child: const CustomTextWidget(
                              text: "Block people you know. They won't see you and you won't see them on Wiloba.",
                              foreColor: ColorLibrary.foreColorMid,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontFamily: "",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios, color: ColorLibrary.foreColorDark),
                  ],),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    width: screenWidth,
                    height: 0.5,
                    color: ColorLibrary.bgColor,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: CustomTextWidget(
                    text: "Phone & Email",
                    foreColor: ColorLibrary.foreColorMid,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "",
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    width: screenWidth,
                    height: 0.5,
                    color: ColorLibrary.bgColor,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: "+1 719 957 1237",
                      foreColor: ColorLibrary.foreColorDark,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: "",
                      textAlign: TextAlign.left,
                    ),
                    Icon(Icons.check_circle, color: ColorLibrary.foreColorMid),
                  ],),
              ],
            ),
          ),
        )
    );
  }
}
