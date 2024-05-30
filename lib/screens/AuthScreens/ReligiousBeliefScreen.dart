import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/PoliticalBeliefScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class ReligiousBeliefScreen extends StatefulWidget {
  const ReligiousBeliefScreen({super.key});

  @override
  State<ReligiousBeliefScreen> createState() => _ReligiousBeliefScreenState();
}

class _ReligiousBeliefScreenState extends State<ReligiousBeliefScreen> {
  String interest = "Christian";
  final List<String> options = ["Christian", "Catholic", "Buddhist", "Hindu",
    "Jewish", "Muslim", "Spiritual", "Agnostic", "Atheist", "Other", "Prefer Not to Say"];

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
                currentStep: 11,
                stepCount: 17,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "What are your religious beliefs?",
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
                            interest = "Christian";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Christian" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[0],
                              foreColor: interest == "Christian" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Catholic";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Catholic" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[1],
                              foreColor: interest == "Catholic" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Buddhist";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Buddhist" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[2],
                              foreColor: interest == "Buddhist" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Hindu";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Hindu" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[3],
                              foreColor: interest == "Hindu" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Jewish";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Jewish" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[4],
                              foreColor: interest == "Jewish" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Muslim";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Muslim" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[5],
                              foreColor: interest == "Muslim" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Spiritual";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Spiritual" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[6],
                              foreColor: interest == "Spiritual" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Agnostic";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Agnostic" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[7],
                              foreColor: interest == "Agnostic" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Atheist";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Atheist" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[8],
                              foreColor: interest == "Atheist" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Other";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Other" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[9],
                              foreColor: interest == "Other" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            interest = "Prefer Not to say";
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: interest == "Prefer Not to say" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                            child: CustomTextWidget(
                              text: options[10],
                              foreColor: interest == "Prefer Not to say" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                  return const PoliticalBeliefScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}

