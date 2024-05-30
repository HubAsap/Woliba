import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/repo/ImageLibrary.dart';
import 'package:woliba/screens/AuthScreens/PhotoTypeScreen.dart';
import 'package:woliba/screens/MiscellaneousScreens/AlertScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
String interest = "I accept";
final List<String> options = ["I accept", "Personalise my choices"];

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
              width: screenWidth * 0.8,
              currentStep: 17,
              stepCount: 17,
              color: ColorLibrary.bgColor,
              progressColor: ColorLibrary.primaryColorLite,
              padding: 4,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: CustomTextWidget(
              text: "We value your privacy",
              foreColor: ColorLibrary.foreColorDark,
              fontSize: 21,
              fontWeight: FontWeight.bold,
              fontFamily: "Simonetta",
              textAlign: TextAlign.left,
            ),),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
            child: SizedBox(
              width: screenWidth - 80,
              child: const CustomTextWidget(
                text: "Wiloba uses third party services to track analytics data, and provide features such as authentication, chat, and share links.",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 11,
                fontWeight: FontWeight.normal,
                fontFamily: "",
                textAlign: TextAlign.left,
              ),
            ),),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 180),
            child: SizedBox(
              child: Wrap(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 10, 10, 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          interest = "I accept";
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: interest == "I accept" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                          child: CustomTextWidget(
                            text: options[0],
                            foreColor: interest == "I accept" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                            fontFamily: "",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          interest = "Personalise my choice";
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: interest == "Personalise my choice" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                          child: CustomTextWidget(
                            text: options[1],
                            foreColor: interest == "Personalise my choice" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                            fontFamily: "",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),)
                ],
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
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AlertScreen(text1: "Profiles with personality lead to better convos.", text2: "So you can find balance", imagePath: ImageLibrary.couple3, buttonText: "Create Profile", buttonAction: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const PhotoTypeScreen();
                  }));
                });
              }));
            },
            btnBGcolor: ColorLibrary.primaryColor,
            textColor: ColorLibrary.foreColorLight),
      ),
    ),
  );
}
}