import 'package:flutter/material.dart';
import '../Repo/ColorLibrary.dart';
import '../screens/NavScreens/ChatScreen.dart';
import 'TextWidget.dart';

class MatchContactList extends StatefulWidget {
  final List<String> profileImages;
  final List<String> usernames;
  final List<String> phoneNumbers;

  const MatchContactList({Key? key, required this.profileImages, required this.usernames, required this.phoneNumbers}) : super(key: key);

  @override
  _MatchContactListState createState() => _MatchContactListState();
}

class _MatchContactListState extends State<MatchContactList> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: widget.profileImages.length * 60,
      width: screenWidth,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.profileImages.length,
        itemBuilder: (BuildContext context, int index) {
          String profileImage = widget.profileImages[index];
          String username = widget.usernames[index];
          String phoneNumber = widget.phoneNumbers[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SizedBox(
              height: 50,
              width: screenWidth,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ChatScreen(username: username);
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        profileImage,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget(
                            text: username,
                            foreColor: ColorLibrary.foreColorDark,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "",
                            textAlign: TextAlign.left,
                          ),
                          CustomTextWidget(
                            text: phoneNumber,
                            foreColor: ColorLibrary.foreColorLight,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            fontFamily: "",
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
