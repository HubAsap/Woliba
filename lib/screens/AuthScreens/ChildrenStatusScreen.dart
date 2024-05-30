import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/HomeTownScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class ChildrenStatusScreen extends StatefulWidget {
  const ChildrenStatusScreen({super.key});

  @override
  State<ChildrenStatusScreen> createState() => _ChildrenStatusScreenState();
}

class _ChildrenStatusScreenState extends State<ChildrenStatusScreen> {
  bool positive = false;
  String interest = "Don't have children";
  final List<String> options = ["Don't have children", "Have children", "Prefer Not to say"];
  final List<String> options2 = ["Don't want children", "Want children", "Open to children", "Prefer Not to say"];

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
                currentStep: 5,
                stepCount: 17,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "What about children?",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Simonetta",
                textAlign: TextAlign.left,
              ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Wrap(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 10, 10, 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          interest = "Don't have children";
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: interest == "Don't have children" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                          child: CustomTextWidget(
                            text: options[0],
                            foreColor: interest == "Don't have children" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                          interest = "Have children";
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: interest == "Have children" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                          child: CustomTextWidget(
                            text: options[1],
                            foreColor: interest == "Have children" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            text: options[2],
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                  height: 1,
                  width: screenWidth,
                  color: ColorLibrary.foreColorMid),
            ),
            //
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Wrap(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 10, 10, 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          interest = "Don't want children";
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: interest == "Don't want children" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                          child: CustomTextWidget(
                            text: options2[0],
                            foreColor: interest == "Don't want children" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                          interest = "Want children";
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: interest == "Want children" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                          child: CustomTextWidget(
                            text: options2[1],
                            foreColor: interest == "Want children" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                          interest = "Open to children";
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: interest == "Open to children" ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                          child: CustomTextWidget(
                            text: options2[2],
                            foreColor: interest == "Open to children" ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                            text: options2[3],
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                  height: 1,
                  width: screenWidth,
                  color: ColorLibrary.foreColorMid),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 150),
              child: SizedBox(
                width: 90,
                child: AnimatedToggleSwitch<bool>.dual(
                  current: positive,
                  first: false,
                  second: true,
                  spacing: 10.0,
                  style: ToggleStyle(
                    borderColor: positive ? ColorLibrary.primaryColor : ColorLibrary.foreColorMid,
                  ),
                  borderWidth: 1.0,
                  height: 40,
                  onChanged: (b) => setState(() => positive = b),
                  styleBuilder: (b) =>
                      ToggleStyle(indicatorColor: b ? ColorLibrary.primaryColor : ColorLibrary.foreColorMid),
                  iconBuilder: (value) => value
                      ? const Icon(Icons.remove_red_eye_outlined, size: 14,)
                      : const Icon(Icons.lock_outline, size: 14,),
                  textBuilder: (value) => value
                      ? const Center(child: Text('Visible', style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold)))
                      : const Center(child: Text('Hidden', style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold))),
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
                  return const HomeTownScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
