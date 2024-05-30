import 'package:flutter/material.dart';
import '../Repo/ColorLibrary.dart';

class HorizontalSliderWithIcons extends StatefulWidget {
  final List<String> titles;
  final List<IconData> icons;

  const HorizontalSliderWithIcons({Key? key, required this.titles, required this.icons}) : super(key: key);

  @override
  _HorizontalSliderWithIconsState createState() => _HorizontalSliderWithIconsState();
}

class _HorizontalSliderWithIconsState extends State<HorizontalSliderWithIcons> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: screenWidth,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(), // Remove scrolling physics
        itemCount: widget.titles.length,
        itemBuilder: (BuildContext context, int index) {
          String title = widget.titles[index];
          IconData icon = widget.icons[index];
          return SizedBox(
            height: 50,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Icon(icon, color: ColorLibrary.foreColorLight,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Text(
                      title,
                      style: TextStyle(color: ColorLibrary.foreColorDark),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(right:8.0),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  width: 0.5,
                  height: 50,
                  color: ColorLibrary.bgColor,),
              )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
