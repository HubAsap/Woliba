import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/UploadPhotoScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';
import 'package:badges/badges.dart' as badges;

class PhotoTypeScreen extends StatefulWidget {
  const PhotoTypeScreen({super.key});

  @override
  State<PhotoTypeScreen> createState() => _PhotoTypeScreenState();
}

class _PhotoTypeScreenState extends State<PhotoTypeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.07, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(FeatherIcons.x, color: ColorLibrary.foreColorDark, size: 30,)),
                ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 40.0, bottom: 20),
              child: ProgressStepper(
                width: screenWidth * 0.2,
                currentStep: 1,
                stepCount: 3,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "Use your best photos & videos",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Simonetta",
                textAlign: TextAlign.left,
              ),),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: badges.Badge(
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: ColorLibrary.primaryColor,
                ),
                badgeContent: const Icon(Icons.add, color: ColorLibrary.bgColor, size: 14),
                child: DottedBorder(
                  color: ColorLibrary.foreColorMid,
                  strokeWidth: 2,
                  dashPattern: [6, 0, 3, 0, 2, 0, 3],
                  strokeCap: StrokeCap.round,
                  child: SizedBox(
                    width: screenWidth - 40,
                    height: 50,
                    child: const Center(
                      child: CustomTextWidget(
                        text: "Connect Your Instagram",
                        foreColor: ColorLibrary.foreColorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "",
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: badges.Badge(
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: ColorLibrary.primaryColor,
                  ),
                badgeContent: const Icon(Icons.add, color: ColorLibrary.bgColor, size: 14,),
                child: DottedBorder(
                  color: ColorLibrary.foreColorMid,
                  strokeWidth: 2,
                  dashPattern: [6, 0, 3, 0, 2, 0, 3],
                  strokeCap: StrokeCap.round,
                  child: SizedBox(
                    width: screenWidth - 40,
                    height: 50,
                    child: const Center(
                      child: CustomTextWidget(
                        text: "Connect Your Camera Roll",
                        foreColor: ColorLibrary.foreColorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "",
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 40),
              child: badges.Badge(
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: ColorLibrary.primaryColor,
                ),
                badgeContent: const Icon(Icons.add, color: ColorLibrary.bgColor, size: 14),
                child: DottedBorder(
                  color: ColorLibrary.foreColorMid,
                  strokeWidth: 2,
                  dashPattern: [6, 0, 3, 0, 2, 0, 3],
                  strokeCap: StrokeCap.round,
                  child: SizedBox(
                    width: screenWidth - 40,
                    height: 50,
                    child: const Center(
                      child: CustomTextWidget(
                        text: "Connect Your Facebook",
                        foreColor: ColorLibrary.foreColorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "",
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomButtonWidget(
              isLoading: false,
              width: screenWidth - 40,
              height: 40,
              text: "continue",
              btnIcon: const Icon(Icons.arrow_forward_ios, color: ColorLibrary.bgColor2, size: 16,),
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const UploadPhotoScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
