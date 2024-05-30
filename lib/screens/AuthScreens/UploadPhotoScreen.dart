import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/ProfilePromptScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class UploadPhotoScreen extends StatefulWidget {
  const UploadPhotoScreen({super.key});

  @override
  State<UploadPhotoScreen> createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
      backgroundColor: ColorLibrary.bgColor2,
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
                currentStep: 2,
                stepCount: 3,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "Pair your photos and videos with prompts",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Simonetta",
                textAlign: TextAlign.left,
              ),),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DottedBorder(
                    color: ColorLibrary.foreColorMid,
                    strokeWidth: 2,
                    dashPattern: [6, 0, 3, 0, 2, 0, 3],
                    strokeCap: StrokeCap.round,
                    child: SizedBox(
                      width: screenWidth * 0.25,
                      height: screenWidth * 0.25,
                      child: Center(
                        child: Icon(Icons.add, color: ColorLibrary.bgColor, size: screenWidth * 0.2,),
                      ),
                    ),
                  ),
                  DottedBorder(
                    color: ColorLibrary.foreColorMid,
                    strokeWidth: 2,
                    dashPattern: [6, 0, 3, 0, 2, 0, 3],
                    strokeCap: StrokeCap.round,
                    child: SizedBox(
                      width: screenWidth * 0.25,
                      height: screenWidth * 0.25,
                      child: Center(
                        child: Icon(Icons.add, color: ColorLibrary.bgColor, size: screenWidth * 0.2,),
                      ),
                    ),
                  ),
                  DottedBorder(
                    color: ColorLibrary.foreColorMid,
                    strokeWidth: 2,
                    dashPattern: [6, 0, 3, 0, 2, 0, 3],
                    strokeCap: StrokeCap.round,
                    child: SizedBox(
                      width: screenWidth * 0.25,
                      height: screenWidth * 0.25,
                      child: Center(
                        child: Icon(Icons.add, color: ColorLibrary.bgColor, size: screenWidth * 0.2,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DottedBorder(
                    color: ColorLibrary.foreColorMid,
                    strokeWidth: 2,
                    dashPattern: [6, 0, 3, 0, 2, 0, 3],
                    strokeCap: StrokeCap.round,
                    child: SizedBox(
                      width: screenWidth * 0.25,
                      height: screenWidth * 0.25,
                      child: Center(
                        child: Icon(Icons.add, color: ColorLibrary.bgColor, size: screenWidth * 0.2,),
                      ),
                    ),
                  ),
                  DottedBorder(
                    color: ColorLibrary.foreColorMid,
                    strokeWidth: 2,
                    dashPattern: [6, 0, 3, 0, 2, 0, 3],
                    strokeCap: StrokeCap.round,
                    child: SizedBox(
                      width: screenWidth * 0.25,
                      height: screenWidth * 0.25,
                      child: Center(
                        child: Icon(Icons.add, color: ColorLibrary.bgColor, size: screenWidth * 0.2,),
                      ),
                    ),
                  ),
                  DottedBorder(
                    color: ColorLibrary.foreColorMid,
                    strokeWidth: 2,
                    dashPattern: [6, 0, 3, 0, 2, 0, 3],
                    strokeCap: StrokeCap.round,
                    child: SizedBox(
                      width: screenWidth * 0.25,
                      height: screenWidth * 0.25,
                      child: Center(
                        child: Icon(Icons.add, color: ColorLibrary.bgColor, size: screenWidth * 0.2,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    text: "6 required",
                    foreColor: ColorLibrary.foreColorDark,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: "",
                    textAlign: TextAlign.left,
                  ),
                  CustomTextWidget(
                    text: "Drag to reorder",
                    foreColor: ColorLibrary.foreColorDark,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: "",
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 40),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                        width: screenWidth - 40,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10), // Circular border radius of 10
                        ),
                        child: const Center(
                          child: CustomTextWidget(
                            text: "Tap a photo to add a prompt and make vour profile stand out even more.",
                            foreColor: ColorLibrary.foreColorDark,
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                            fontFamily: "",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ),
                  Positioned(
                    top: 8,
                    child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: ColorLibrary.bgColor2,
                          borderRadius: BorderRadius.circular(50), // Circular border radius of 10
                        ),
                        child: const Icon(Icons.lightbulb, color: ColorLibrary.foreColorMid, size: 16)),
                  ),
                ],
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
                  return const ProfilePromptScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
