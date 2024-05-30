import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:woliba/repo/ImageLibrary.dart';
import 'package:woliba/widgets/HorizontalSliderWithIcon.dart';
import 'package:woliba/widgets/VerticalListWithIcons.dart';

import '../../Repo/ColorLibrary.dart';
import '../../widgets/HorizontalSlider.dart';
import '../../widgets/TextWidget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<String> sliderTitles = ["Compatible", "Active Today", "Nearby", "Others"];
  List<String> profileData = ["35", "Woman", "Straight", "5'7"];
  List<IconData> iconsData = [Icons.cake_outlined, Icons.person_2_outlined, FeatherIcons.heart, FeatherIcons.layers,];

  List<String> profileData2 = ["Dietitian at Private Practice", "Spiritual", "Saint Petersburg", "Not Political", "English, Russian", "life Partner", "Monogamy"];
  List<IconData> iconsData2 = [FeatherIcons.briefcase, Icons.book_outlined, FeatherIcons.home, Icons.warehouse_outlined, Icons.language, FeatherIcons.search, FeatherIcons.users];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;
    double screenHeight = MediaQuery. of(context). size. height;
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),
              HorizontalSlider(titles: sliderTitles),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(children: [
                    CustomTextWidget(
                      text: "Anna",
                      foreColor: ColorLibrary.foreColorDark,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: "",
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(4, 2, 0, 2),
                      child: CustomTextWidget(
                        text: "• Active today",
                        foreColor: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],),
                  Row(children: [
                    Icon(FeatherIcons.cornerDownLeft, color: ColorLibrary.foreColorLight,),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 2, 0, 2),
                      child: Icon(FeatherIcons.moreHorizontal, color: ColorLibrary.foreColorDark,),
                    ),
                  ],),
                ],),
              ),
              const Padding(padding: EdgeInsets.only(left: 20, top: 4),
              child: CustomTextWidget(
                text: "✪ Verified",
                foreColor: ColorLibrary.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: "",
                textAlign: TextAlign.center,
              ),),
              Padding(padding: const EdgeInsets.only(left: 20, top: 8, right: 20),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      ImageLibrary.exploreProfile1,
                      width: screenWidth,
                      height: screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      backgroundColor: ColorLibrary.bgColor2,
                      child: SvgPicture.asset(
                        ImageLibrary.likeIcon,
                        color: ColorLibrary.primaryColor, // Change the color of the SVG image
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),),
              Padding(padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Stack(
                children: [
                  Container(
                    width: screenWidth,
                    height: screenWidth * 0.7,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: screenWidth,
                          child: const CustomTextWidget(
                            text: "My self-car routine is",
                            foreColor: ColorLibrary.foreColorDark,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: "",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: SizedBox(
                            child: CustomTextWidget(
                              text: "Traveling, beach time, dancing & yoga",
                              foreColor: ColorLibrary.foreColorDark,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              fontFamily: "",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      backgroundColor: ColorLibrary.bgColor2,
                      child: SvgPicture.asset(
                        ImageLibrary.likeIcon,
                        color: ColorLibrary.primaryColor, // Change the color of the SVG image
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),),
              Padding(padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Container(
                width: screenWidth,
                height: 490,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HorizontalSliderWithIcons(titles: profileData, icons: iconsData),
                    VerticalListWithIcons(titles: profileData2, icons: iconsData2),
                  ],
                ),
              ),),
              Padding(padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        ImageLibrary.exploreProfile2,
                        width: screenWidth,
                        height: screenWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: FloatingActionButton(
                        onPressed: () {
                          // Add your button action here
                        },
                        backgroundColor: ColorLibrary.bgColor2,
                        child: SvgPicture.asset(
                          ImageLibrary.likeIcon,
                          color: ColorLibrary.primaryColor, // Change the color of the SVG image
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),),
              Padding(padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        ImageLibrary.exploreProfile3,
                        width: screenWidth,
                        height: screenWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: FloatingActionButton(
                        onPressed: () {
                          // Add your button action here
                        },
                        backgroundColor: ColorLibrary.bgColor2,
                        child: SvgPicture.asset(
                          ImageLibrary.likeIcon,
                          color: ColorLibrary.primaryColor, // Change the color of the SVG image
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),),

              Padding(padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Stack(
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenWidth * 0.7,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: screenWidth,
                            child: const CustomTextWidget(
                              text: "My favorite line from a film",
                              foreColor: ColorLibrary.foreColorDark,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: "",
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: SizedBox(
                              child: CustomTextWidget(
                                text: "If he dies, he dies 😈",
                                foreColor: ColorLibrary.foreColorDark,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                fontFamily: "",
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: FloatingActionButton(
                        onPressed: () {
                          // Add your button action here
                        },
                        backgroundColor: ColorLibrary.bgColor2,
                        child: SvgPicture.asset(
                          ImageLibrary.likeIcon,
                          color: ColorLibrary.primaryColor, // Change the color of the SVG image
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),),
              Padding(padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        ImageLibrary.exploreProfile4,
                        width: screenWidth,
                        height: screenWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: FloatingActionButton(
                        onPressed: () {
                          // Add your button action here
                        },
                        backgroundColor: ColorLibrary.bgColor2,
                        child: SvgPicture.asset(
                          ImageLibrary.likeIcon,
                          color: ColorLibrary.primaryColor, // Change the color of the SVG image
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),),
            ],
          ),
        )
    );
  }
}
