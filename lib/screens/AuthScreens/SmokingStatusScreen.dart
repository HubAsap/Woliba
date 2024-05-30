import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/SmokingWeedStatusScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class SmokingStatusScreen extends StatefulWidget {
  const SmokingStatusScreen({super.key});

  @override
  State<SmokingStatusScreen> createState() => _SmokingStatusScreenState();
}

class _SmokingStatusScreenState extends State<SmokingStatusScreen> {
  String interest = "Yes";
  final List<String> options = ["Yes", "Sometimes", "No", "Prefer Not to Say"];

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
                currentStep: 14,
                stepCount: 17,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "Do you smoke?",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Simonetta",
                textAlign: TextAlign.left,
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
                            interest = "Yes";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Yes" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[0],
                              foreColor: interest == "Yes" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Sometimes";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Sometimes" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[1],
                              foreColor: interest == "Sometimes" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "No";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "No" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[2],
                              foreColor: interest == "No" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Prefer Not to Say";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Prefer Not to Say" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[3],
                              foreColor: interest == "Prefer Not to Say" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SmokingWeedStatusScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
