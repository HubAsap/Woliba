import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/EmailScreen.dart';

import '../../Repo/ColorLibrary.dart';
import '../../repo/DataLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/IconButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  List<FocusNode> _focusNodes = [];
  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    // Initialize focus nodes and text controllers
    for (int i = 0; i < 2; i++) {
      _focusNodes.add(FocusNode());
      _controllers.add(TextEditingController());
    }
  }

  @override
  void dispose() {
    // Dispose of focus nodes and text controllers
    for (int i = 0; i < _controllers.length; i++) {
      _focusNodes[i].dispose();
      _controllers[i].dispose();
    }
    super.dispose();
  }

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
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20, bottom: 0),
              child: CustomTextWidget(
                text: "NO BACKGROUND CHECKS ARE CONDUCTED",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 11,
                fontWeight: FontWeight.normal,
                fontFamily: "",
                textAlign: TextAlign.center,
              ),),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 40.0, bottom: 20),
              child: ProgressStepper(
                width: screenWidth * 0.2,
                currentStep: 1,
                stepCount: 4,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "What's your name?",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Simonetta",
                textAlign: TextAlign.left,
              ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                cursorColor: ColorLibrary.foreColorDark,
                controller: _controllers[0],
                focusNode: _focusNodes[0],
                keyboardType: TextInputType.name,
                textAlign: TextAlign.center,
                maxLength: 15,
                decoration: InputDecoration(
                  hintText: "First name (required)",
                  counterText: "",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(DataLibrary.borderRadius)),
                  focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: ColorLibrary.foreColorDark), borderRadius: BorderRadius.circular(10),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                cursorColor: ColorLibrary.foreColorDark,
                controller: _controllers[1],
                focusNode: _focusNodes[1],
                keyboardType: TextInputType.name,
                textAlign: TextAlign.center,
                maxLength: 15,
                decoration: InputDecoration(
                  hintText: "Last name",
                  counterText: "",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(DataLibrary.borderRadius)),
                  focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: ColorLibrary.foreColorDark), borderRadius: BorderRadius.circular(10),),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
              child: CustomTextWidget(
                text: "Last name is optional, and only shared with matches.",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 11,
                fontWeight: FontWeight.normal,
                fontFamily: "",
                textAlign: TextAlign.left,
              ),),
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
                  return const EmailScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
