import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import '../../Repo/ColorLibrary.dart';
import '../../repo/ImageLibrary.dart';
import '../../widgets/MatchContactList.dart';
import '../../widgets/TextWidget.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  List<String> profileImages1 = [ImageLibrary.defaultFemaleUser, ImageLibrary.defaultFemaleUser];
  List<String> profileImages2 = [ImageLibrary.defaultFemaleUser, ImageLibrary.defaultFemaleUser, ImageLibrary.defaultFemaleUser, ImageLibrary.defaultFemaleUser];
  List<String> phoneNumbers1 = ["760-221-2949", "802-422-4739"];
  List<String> phoneNumbers2 = ["810-221-5012", "771-221-2646", "760-221-9990", "760-332-7832"];
  List<String> usernames1 = ["Lisa", "Gina"];
  List<String> usernames2 = ["Deborah", "Amanda", "Vivian", "Mary"];

  bool showingYourTurn = true;
  bool showingTheirTurn = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 80),
              child: CustomTextWidget(
                text: "Matches",
                foreColor: ColorLibrary.foreColorDark,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "",
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showingYourTurn = !showingYourTurn;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: "Your turn (${profileImages1.length})",
                      foreColor: ColorLibrary.foreColorDark,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: "",
                      textAlign: TextAlign.left,
                    ),
                    Icon(
                      showingYourTurn ? FeatherIcons.chevronDown : FeatherIcons.chevronUp,
                      color: ColorLibrary.foreColorDark,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(4),
                width: screenWidth,
                height: 0.5,
                color: ColorLibrary.bgColor,
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 1000),
              child: showingYourTurn
                  ? Padding(
                key: Key('contactList1'),
                padding: const EdgeInsets.only(left: 20.0),
                child: MatchContactList(
                  profileImages: profileImages1,
                  usernames: usernames1,
                  phoneNumbers: phoneNumbers1,
                ),
              )
                  : const SizedBox(),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showingTheirTurn = !showingTheirTurn;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: "Their turn (${profileImages2.length})",
                      foreColor: ColorLibrary.foreColorDark,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: "",
                      textAlign: TextAlign.left,
                    ),
                    Icon(
                      showingTheirTurn ? FeatherIcons.chevronDown : FeatherIcons.chevronUp,
                      color: ColorLibrary.foreColorDark,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(4),
                width: screenWidth,
                height: 0.5,
                color: ColorLibrary.bgColor,
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 1000),
              child: showingTheirTurn
                  ? Padding(
                key: Key('contactList2'),
                padding: const EdgeInsets.only(left: 20.0),
                child: MatchContactList(
                  profileImages: profileImages2,
                  usernames: usernames2,
                  phoneNumbers: phoneNumbers2,
                ),
              )
                  : const SizedBox(),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
