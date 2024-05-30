import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/Repo/ColorLibrary.dart';
import 'package:woliba/repo/DataLibrary.dart';
import 'package:woliba/screens/AuthScreens/VerificationCodeScreen.dart';

import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
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
                stepCount: 2,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "Enter your phone number",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Simonetta",
                textAlign: TextAlign.left,
              ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: IntlPhoneField(
                cursorColor: ColorLibrary.foreColorDark,
                dropdownIcon: const Icon(Icons.arrow_drop_down_sharp, color: ColorLibrary.foreColorDark, size: 27,),
                decoration: InputDecoration(
                  counterText: "",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(DataLibrary.borderRadius)),
                  focusedBorder: OutlineInputBorder(borderSide: const BorderSide(width: 1, color: ColorLibrary.foreColorDark), borderRadius: BorderRadius.circular(10),),
                ),
                initialCountryCode: 'NG',
                onChanged: (phone) {},
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
              child: CustomTextWidget(
                text: "Woliba will send you a text with a verification code.",
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
                  return const VerificationCodeScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
