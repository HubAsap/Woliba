import 'package:flutter/material.dart';
import 'package:woliba/screens/AuthScreens/AuthScreen.dart';
import '../../repo/ColorLibrary.dart';
import '../../repo/ImageLibrary.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String _accountType = "";
  bool _isAppVersionObselete = false;
  bool _needUpdate = false;

  Map<String, dynamic> rapidRaffleData = {};
  Map<String, dynamic> dailyLotteryData = {};
  Map<String, dynamic> weeklyLotteryData = {};
  Map<String, dynamic> miniJackpotData = {};
  Map<String, dynamic> regularJackpotData = {};
  Map<String, dynamic> megaJackpotData = {};
  Map<String, dynamic> threeCrownLotteryData = {};
  Map<String, dynamic> fiveStarLotteryData = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const AuthScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: ColorLibrary.bgColor,
        body: SizedBox(
          width: screenWidth,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageLibrary.logo,
                  height: screenHeight * 0.4,
                  width: screenWidth * 0.4,
                ),
              ]
          ),
        ));
  }
}
