import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/WorkplaceScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../repo/DataLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class HomeTownScreen extends StatefulWidget {
  const HomeTownScreen({super.key});

  @override
  State<HomeTownScreen> createState() => _HomeTownScreenState();
}

class _HomeTownScreenState extends State<HomeTownScreen> {
  List<FocusNode> _focusNodes = [];
  List<TextEditingController> _controllers = [];


  bool checked =  false;

  bool positive = false;

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
                width: screenWidth * 0.8,
                currentStep: 6,
                stepCount: 17,
                color: ColorLibrary.bgColor,
                progressColor: ColorLibrary.primaryColorLite,
                padding: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomTextWidget(
                text: "Where's your hometown?",
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
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 50,
                decoration: InputDecoration(
                  hintText: "eg. Springfield, MA",
                  hintStyle: TextStyle(
                    fontSize: 21,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(DataLibrary.borderRadius)),
                  counterText: "",
                  focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: ColorLibrary.foreColorDark), borderRadius: BorderRadius.circular(10),),
                ),
              ),
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
                  return const WorkplaceScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
