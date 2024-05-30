import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/GenderInterestScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  bool isMan = false;
  final List<String> options = ["Man", "Woman"];
  bool positive = false;


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
                currentStep: 2,
                stepCount: 17,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "What is your gender?",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Simonetta",
                textAlign: TextAlign.left,
              ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10, 10, 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMan = true;
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: isMan ? ColorLibrary.primaryColor : ColorLibrary.bgColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                          child: CustomTextWidget(
                            text: options[0],
                            foreColor: isMan ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                          isMan = false;
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: !isMan ? ColorLibrary.primaryColor : ColorLibrary.foreColorLight,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                          child: CustomTextWidget(
                            text: options[1],
                            foreColor: !isMan ? ColorLibrary.foreColorLight : ColorLibrary.foreColorDark,
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
                  return const GenderInterestScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
