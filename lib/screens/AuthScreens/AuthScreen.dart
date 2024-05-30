import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:woliba/repo/ColorLibrary.dart';
import 'package:woliba/repo/VideoLibrary.dart';
import 'package:woliba/screens/AuthScreens/PhoneNumberScreen.dart';
import 'package:woliba/widgets/ButtonWidget.dart';
import 'package:woliba/widgets/PolicyLinkGroupWidget.dart';
import 'package:woliba/widgets/TextWidget.dart';

import '../../repo/ImageLibrary.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(VideoLibrary.couplesFilm)
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          // Add other widgets on top of the video
          Container(
            color: ColorLibrary.primaryColor.withOpacity(0.70),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Image.asset(
                        ImageLibrary.logoWhite,
                        height: 50,
                      ),
                        const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomTextWidget(
                          text: "Work • Life • Balance",
                          foreColor: ColorLibrary.foreColorLight,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          fontFamily: "",
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.11),
                    child: Column(
                      children: [
                        SizedBox(width: screenWidth - 40, child: PolicyLinkGroupWidget()),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: CustomButtonWidget(
                              isLoading: false,
                              width: screenWidth - 40,
                              height: 40,
                              text: "Get Started",
                              onTap: (){
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(builder: (context) {
                                  return const PhoneNumberScreen();
                                }));
                              },
                              btnBGcolor: ColorLibrary.primaryColor,
                              textColor: ColorLibrary.foreColorLight),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: const CustomTextWidget(
                              text: "Sign In",
                              foreColor: ColorLibrary.foreColorLight,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
