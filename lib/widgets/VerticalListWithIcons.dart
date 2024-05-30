import 'package:flutter/material.dart';
import '../Repo/ColorLibrary.dart';

class VerticalListWithIcons extends StatefulWidget {
  final List<String> titles;
  final List<IconData> icons;

  const VerticalListWithIcons({Key? key, required this.titles, required this.icons}) : super(key: key);

  @override
  _VerticalListWithIconsState createState() => _VerticalListWithIconsState();
}

class _VerticalListWithIconsState extends State<VerticalListWithIcons> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 400,
      width: screenWidth,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 20),
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.titles.length,
        itemBuilder: (BuildContext context, int index) {
          String title = widget.titles[index];
          IconData icon = widget.icons[index];
          return SizedBox(
            height: 50,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    width: screenWidth,
                    height: 0.5,
                    color: ColorLibrary.bgColor,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(icon, color: ColorLibrary.foreColorDark,),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0, top: 2),
                      child: Text(
                        title,
                        style: const TextStyle(color: ColorLibrary.foreColorDark, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
