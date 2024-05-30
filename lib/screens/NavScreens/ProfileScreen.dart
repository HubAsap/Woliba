import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:badges/badges.dart' as badges;
import 'package:woliba/screens/MiscellaneousScreens/SettingsScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../repo/ImageLibrary.dart';
import '../../widgets/ButtonWidgetLite.dart';
import '../../widgets/ImageCard.dart';
import '../../widgets/TextWidget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    ImageLibrary.logo,
                    height: 30,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){

                          },
                          child: const Icon(FeatherIcons.sliders, color: ColorLibrary.foreColorDark)),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const SettingsScreen();
                              }));
                            },
                            child: const Icon(FeatherIcons.settings, color: ColorLibrary.foreColorDark)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: badges.Badge(
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: ColorLibrary.bgColor2,
                ),
                badgeContent: const Icon(FeatherIcons.camera, color: ColorLibrary.foreColorDark, size: 14),
                position: badges.BadgePosition.topEnd(end: 0, top: 4),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: ColorLibrary.primaryColor, width: 4), // Red border
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      ImageLibrary.defaultMaleUser,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  text: "Tony",
                  foreColor: ColorLibrary.foreColorDark,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "",
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CustomTextWidget(
                    text: "✪",
                    foreColor: ColorLibrary.foreColorMid,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "",
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: screenWidth,
                height: 500,
                child: Column(
                  children: [
                    TabBar(
                      padding: EdgeInsets.zero,
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: ColorLibrary.foreColorLight,
                      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      indicatorColor: ColorLibrary.foreColorDark,
                      labelColor: ColorLibrary.foreColorDark,
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      controller: _tabController,
                      tabs: const [
                        Tab(text: 'Get more'),
                        Tab(text: 'My Account'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: SizedBox(
                                  height: 200,
                                  width: screenWidth,
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      ImageCard(
                                        imageUrl: ImageLibrary.upgradeBannerImage1,
                                        headerText: 'Woliba Pro',
                                        bodyText: 'Get noticed sooner and go on 3x as many dates',
                                        buttonText: 'Upgrade',
                                        buttonForeColor: ColorLibrary.foreColorDark,
                                        buttonBgColor: ColorLibrary.bgColor2,
                                        onPressed: () {
                                          // Add your button logic here
                                        },
                                      ),
                                      const SizedBox(width: 10), // Add spacing between cards
                                      ImageCard(
                                        imageUrl: ImageLibrary.upgradeBannerImage2,
                                        headerText: 'Wiloba+',
                                        bodyText: 'Send and see all the like you want',
                                        buttonText: 'Upgrade',
                                        buttonForeColor: ColorLibrary.bgColor2,
                                        buttonBgColor: ColorLibrary.primaryColor,
                                        onPressed: () {
                                          // Add your button logic here
                                        },
                                      ),
                                      // Add more ImageCard widgets as needed
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 5), // Adjust margin as needed
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorLibrary.foreColorLight, width: 0.5), // Gray border
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 35,
                                          width: 35, // Adjust margin as needed
                                          decoration: BoxDecoration( // Gray
                                            color: ColorLibrary.secondaryColor,// border
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(FeatherIcons.zap, color: ColorLibrary.foreColorLight)),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomTextWidget(
                                              text: "Boost",
                                              foreColor: ColorLibrary.foreColorDark,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "",
                                              textAlign: TextAlign.left,
                                            ),
                                            CustomTextWidget(
                                              text: "Get seen by 11x more people",
                                              foreColor: ColorLibrary.foreColorDark,
                                              fontSize: 11,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "",
                                              textAlign: TextAlign.left,
                                            ),
                                          ],),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 5), // Adjust margin as needed
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorLibrary.foreColorLight, width: 0.5), // Gray border
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 35,
                                          width: 35, // Adjust margin as needed
                                          decoration: BoxDecoration( // Gray
                                            color: ColorLibrary.primaryColorLite,// border
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(FeatherIcons.aperture, color: ColorLibrary.foreColorLight)),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomTextWidget(
                                              text: "Tokens",
                                              foreColor: ColorLibrary.foreColorDark,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "",
                                              textAlign: TextAlign.left,
                                            ),
                                            CustomTextWidget(
                                              text: "2x as likely to lead to a date",
                                              foreColor: ColorLibrary.foreColorDark,
                                              fontSize: 11,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "",
                                              textAlign: TextAlign.left,
                                            ),
                                          ],),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: screenWidth,
                                  padding: const EdgeInsets.all(20),
                                  margin: EdgeInsets.symmetric(horizontal: 5), // Adjust margin as needed
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorLibrary.foreColorLight, width: 0.5), // Gray border
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 35,
                                          width: 35, // Adjust margin as needed
                                          decoration: BoxDecoration( // Gray
                                            color: ColorLibrary.foreColorLight,// border
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(FeatherIcons.image, color: ColorLibrary.foreColorDark)),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0, top: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            const CustomTextWidget(
                                              text: "Date like a pro",
                                              foreColor: ColorLibrary.foreColorDark,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "",
                                              textAlign: TextAlign.center,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 10.0),
                                              child: CustomTextWidget(
                                                text: "Updating your profile every few months can",
                                                foreColor: ColorLibrary.foreColorDark,
                                                fontSize: 11,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: "",
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 10.0),
                                              child: CustomTextWidget(
                                                text: "lead to more matches",
                                                foreColor: ColorLibrary.foreColorDark,
                                                fontSize: 11,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: "",
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 20.0),
                                              child: CustomButtonWidgetLite(
                                                  isLoading: false,
                                                  width: screenWidth - 40,
                                                  height: 40,
                                                  text: "Edit Profile",
                                                  onTap: (){

                                                  },
                                                  textColor: ColorLibrary.foreColorDark),
                                            ),
                                          ],),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 5), // Adjust margin as needed
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorLibrary.foreColorLight, width: 0.5), // Gray border
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 35,
                                          width: 35, // Adjust margin as needed
                                          decoration: BoxDecoration( // Gray
                                            color: ColorLibrary.foreColorLight,// border
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(FeatherIcons.helpCircle, color: ColorLibrary.foreColorDark)),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomTextWidget(
                                              text: "Help Center",
                                              foreColor: ColorLibrary.foreColorDark,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "",
                                              textAlign: TextAlign.left,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 2.0),
                                              child: CustomTextWidget(
                                                text: "Safety, Security and more",
                                                foreColor: ColorLibrary.foreColorDark,
                                                fontSize: 11,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: "",
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 5), // Adjust margin as needed
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorLibrary.foreColorLight, width: 0.5), // Gray border
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 35,
                                          width: 35, // Adjust margin as needed
                                          decoration: BoxDecoration( // Gray
                                            color: ColorLibrary.foreColorLight,// border
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(Icons.lightbulb_outline, color: ColorLibrary.foreColorDark)),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomTextWidget(
                                              text: "What Works",
                                              foreColor: ColorLibrary.foreColorDark,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "",
                                              textAlign: TextAlign.left,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 2.0),
                                              child: CustomTextWidget(
                                                text: "Check out our expert dating tips",
                                                foreColor: ColorLibrary.foreColorDark,
                                                fontSize: 11,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: "",
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
