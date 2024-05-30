import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/BirthDateScreen.dart';

import '../../Repo/ColorLibrary.dart';
import '../../repo/DataLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/IconButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  List<FocusNode> _focusNodes = [];
  List<TextEditingController> _controllers = [];

  bool checked =  false;

  @override
  void initState() {
    super.initState();
    // Initialize focus nodes and text controllers
    for (int i = 0; i < 1; i++) {
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
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 40.0, bottom: 20),
              child: ProgressStepper(
                width: screenWidth * 0.2,
                currentStep: 2,
                stepCount: 4,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "What's your email?",
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
                keyboardType: TextInputType.text,
                textAlign: TextAlign.left,
                maxLength: 50,
                decoration: InputDecoration(
                  hintText: "email@example.com",
                  hintStyle: TextStyle(
                    fontSize: 21,
                  ),
                  counterText: "",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(DataLibrary.borderRadius)),
                  focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: ColorLibrary.foreColorDark), borderRadius: BorderRadius.circular(10),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
              child: Row(children: [
                GestureDetector(
                    onTap: (){
                      setState(() {
                        checked =! checked;
                      });
                    },
                    child: Icon(checked ? Icons.check_circle : Icons.circle_outlined, color: checked ? ColorLibrary.primaryColor : ColorLibrary.foreColorDark, size: 30,)),
                 Padding(
                   padding: const EdgeInsets.only(left: 10.0),
                   child: SizedBox(
                     width: screenWidth * 0.7,
                     child: const CustomTextWidget(
                       text: "I do not wish to receive marketing communications about Woliba products and services.",
                       foreColor: ColorLibrary.foreColorDark,
                       fontSize: 11,
                       fontWeight: FontWeight.normal,
                       fontFamily: "",
                       textAlign: TextAlign.left,
                     ),
                   ),
                 ),
              ],),
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
                  return const BirthDateScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
