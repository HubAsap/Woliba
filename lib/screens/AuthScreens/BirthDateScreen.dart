import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/EnableNotificationScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class BirthDateScreen extends StatefulWidget {
  const BirthDateScreen({super.key});

  @override
  State<BirthDateScreen> createState() => _BirthDateScreenState();
}

class _BirthDateScreenState extends State<BirthDateScreen> {
  DateTime? _selectedDate;
  int age = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                currentStep: 3,
                stepCount: 4,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "When were you born?",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Simonetta",
                textAlign: TextAlign.center,
              ),),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: DatePickerWidget(
                looping: false, // default is not looping
                firstDate: DateTime.now(),
                //  lastDate: DateTime(2002, 1, 1),
//              initialDate: DateTime.now(),// DateTime(1994),
                dateFormat:
                // "MM-dd(E)",
                "dd/MMMM/yyyy",
                locale: DatePicker.localeFromString('en'),
                onChange: (DateTime newDate, _) {
                  setState(() {
                    _selectedDate = newDate;
                  });
                  print(_selectedDate);
                },
                pickerTheme: const DateTimePickerTheme(
                  backgroundColor: Colors.transparent,
                  itemTextStyle:
                  TextStyle(color: ColorLibrary.foreColorDark, fontSize: 19),
                  dividerColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 10),
              child: GestureDetector(
                onTap: (){},
                child: CustomTextWidget(
                  text: "Age $age" ,
                  foreColor: ColorLibrary.primaryColor,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  fontFamily: "",
                  textAlign: TextAlign.center,
                ),
              ),),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  width: screenWidth * 0.7,
                  child: const CustomTextWidget(
                    text: "This cannot be changed later.",
                    foreColor: ColorLibrary.foreColorDark,
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    fontFamily: "",
                    textAlign: TextAlign.center,
                  ),
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
                  return const EnableNotificationScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
