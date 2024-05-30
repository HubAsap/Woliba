import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:woliba/repo/ColorLibrary.dart';
import 'package:woliba/repo/ImageLibrary.dart';
import 'package:woliba/screens/NavScreens/ExploreScreen.dart';
import 'package:woliba/screens/NavScreens/LikeScreen.dart';
import 'package:woliba/screens/NavScreens/MatchScreen.dart';
import 'package:woliba/screens/NavScreens/ProfileScreen.dart';

class CustomBottomNavMenuWidget extends StatefulWidget {
  const CustomBottomNavMenuWidget(
      {Key? key,
        required this.tab,})
      : super(key: key);

  final int tab;

  @override
  State<CustomBottomNavMenuWidget> createState() => _CustomBottomNavMenuWidgetState();
}

class _CustomBottomNavMenuWidgetState extends State<CustomBottomNavMenuWidget> {
  int _selectedIndex = 0;

  late List<Widget> _widgetOptions;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  void initState() {
    _selectedIndex = widget.tab;
    // TODO: implement initState
    super.initState();
    _widgetOptions = [
      ExploreScreen(),
      LikeScreen(),
      MatchScreen(),
      ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: Container(
        color: ColorLibrary.foreColorDark,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: SvgPicture.asset(
                ImageLibrary.exploreIcon,
                color: _selectedIndex == 0 ? ColorLibrary.secondaryColor : ColorLibrary.bgColor, // Change the color of the SVG image
                width: 30,
                height: 30,
          ),
            ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: SvgPicture.asset(
                  ImageLibrary.likeIcon,
                  color: _selectedIndex == 1 ? ColorLibrary.secondaryColor : ColorLibrary.bgColor, // Change the color of the SVG image
                  width: 30,
                  height: 30,
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                child: SvgPicture.asset(
                  ImageLibrary.chatIcon,
                  color: _selectedIndex == 2 ? ColorLibrary.secondaryColor : ColorLibrary.bgColor, // Change the color of the SVG image
                  width: 30,
                  height: 30,
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: _selectedIndex == 3 ? ColorLibrary.secondaryColor : ColorLibrary.bgColor, // Border color
                      width: 2, // Border width
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 20, // Adjust the radius as needed
                    backgroundImage: AssetImage(ImageLibrary.avatar),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}