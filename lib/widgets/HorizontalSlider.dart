import 'package:flutter/material.dart';
import '../Repo/ColorLibrary.dart';

class HorizontalSlider extends StatefulWidget {
  final List<String> titles;

  const HorizontalSlider({Key? key, required this.titles}) : super(key: key);

  @override
  _HorizontalSliderState createState() => _HorizontalSliderState();
}

class _HorizontalSliderState extends State<HorizontalSlider> {
  late String selectedTile;

  @override
  void initState() {
    super.initState();
    selectedTile = widget.titles[0];
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: screenWidth,
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(), // Remove scrolling physics
        children: widget.titles.map((title) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedTile = title;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(4),
              width: 100,
              height: 50,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: selectedTile == title ? Colors.black : ColorLibrary.bgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(color: selectedTile == title ? ColorLibrary.bgColor : ColorLibrary.foreColorDark),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
