import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:woliba/Repo/ColorLibrary.dart';

class PolicyLinkGroupWidget extends StatelessWidget {
  final VoidCallback? onTermsTap;
  final VoidCallback? onPrivacyPolicyTap;
  final VoidCallback? onDisclaimerTap;

  PolicyLinkGroupWidget({
    Key? key,
    this.onTermsTap,
    this.onPrivacyPolicyTap,
    this.onDisclaimerTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: "By signing up, you have read and you agree to our ",
              style: TextStyle(
                color: ColorLibrary.foreColorLight, // Set your desired color
                fontSize: 11, //// Set your desired font size
              ),
            ),
            TextSpan(
              text: "Terms and conditions",
              style: const TextStyle(
                color: ColorLibrary.foreColorLight, // Set your desired color
                fontSize: 11, // Set your desired font size
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTermsTap,
            ),
            const TextSpan(
              text: ", ",
              style: TextStyle(
                color: Colors.black, // Set your desired color
                fontSize: 11, // Set your desired font size
              ),
            ),
            TextSpan(
              text: "Privacy Policy",
              style: const TextStyle(
                color: ColorLibrary.foreColorLight, // Set your desired color
                fontSize: 11, // Set your desired font size
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = onPrivacyPolicyTap,
            ),
            const TextSpan(
              text: ", and our ",
              style: TextStyle(
                color: ColorLibrary.foreColorLight, // Set your desired color
                fontSize: 11, // Set your desired font size
              ),
            ),
            TextSpan(
              text: "Disclaimer",
              style: const TextStyle(
                color: ColorLibrary.foreColorLight, // Set your desired color
                fontSize: 11, // Set your desired font size
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = onDisclaimerTap,
            ),
            const TextSpan(
              text: ".",
              style: TextStyle(
                color: ColorLibrary.foreColorLight, // Set your desired color
                fontSize: 11, // Set your desired font size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
