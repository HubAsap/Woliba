import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/repo/ImageLibrary.dart';
import 'package:woliba/screens/MiscellaneousScreens/AlertScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../repo/DataLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';
import 'UsernameScreen.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  List<FocusNode> _focusNodes = [];
  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    // Initialize focus nodes and text controllers
    for (int i = 0; i < 4; i++) {
      _focusNodes.add(FocusNode());
      _controllers.add(TextEditingController());
    }

    // Add listeners to text controllers to move focus when a character is entered
    for (int i = 0; i < _controllers.length; i++) {
      _controllers[i].addListener(() {
        if (_controllers[i].text.length == 1 && i < _controllers.length - 1) {
          _focusNodes[i + 1].requestFocus();
        }
      });
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
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 40.0, bottom: 20),
              child: ProgressStepper(
                width: screenWidth * 0.2,
                currentStep: 2,
                stepCount: 2,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "Enter verification code",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Simonetta",
                textAlign: TextAlign.left,
              ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < _controllers.length; i++)
                    SizedBox(
                      width: 50,
                      child: TextField(
                        cursorColor: ColorLibrary.foreColorDark,
                        controller: _controllers[i],
                        focusNode: _focusNodes[i],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: InputDecoration(
                          labelText: '',
                          counterText: "",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(DataLibrary.borderRadius)),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: ColorLibrary.foreColorDark), borderRadius: BorderRadius.circular(10),),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 40, bottom: 20),
              child: GestureDetector(
                onTap: (){},
                child: const CustomTextWidget(
                  text: "Didn't get a code?",
                  foreColor: ColorLibrary.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: "",
                  textAlign: TextAlign.left,
                ),
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
                  return AlertScreen(text1: "Welcome to WoLiba", text2: "Developed for lovers working from 9-5.", imagePath: ImageLibrary.couple1, buttonText: "continue", buttonAction: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const UsernameScreen();
                    }));
                  },);
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
