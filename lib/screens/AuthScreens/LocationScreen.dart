import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:woliba/screens/AuthScreens/GenderScreen.dart';
import '../../Repo/ColorLibrary.dart';
import '../../widgets/ButtonWidget.dart';
import '../../widgets/TextWidget.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
        body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.07, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(FeatherIcons.x, color: ColorLibrary.foreColorDark, size: 30,)),
              ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 40.0, bottom: 20),
            child: ProgressStepper(
              width: screenWidth * 0.8,
              currentStep: 1,
              stepCount: 17,
              color: ColorLibrary.bgColor,
              progressColor: ColorLibrary.primaryColorLite,
              padding: 4,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: CustomTextWidget(
              text: "Where do you live?",
              foreColor: ColorLibrary.foreColorDark,
              fontSize: 21,
              fontWeight: FontWeight.bold,
              fontFamily: "Simonetta",
              textAlign: TextAlign.left,
            ),),
          Padding(
            padding: const EdgeInsets.only(left:20.0, top: 10, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey), // Border color
              ),
              width: screenWidth - 40, // Set width as needed
              height: 400, // Set height as needed
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(37.7749, -122.4194), // Initial map coordinates
                    zoom: 12, // Initial zoom level
                  ),
                  markers: {
                    Marker(
                      markerId: MarkerId('marker_1'),
                      position: LatLng(37.7749, -122.4194), // Marker coordinates
                      infoWindow: InfoWindow(
                        title: 'San Francisco',
                        snippet: 'Example Marker',
                      ),
                    ),
                  },
                  onMapCreated: (GoogleMapController controller) {
                    // You can interact with the map controller here
                  },
                ),
              ),
            ),
          ),
        ])),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomButtonWidget(
              isLoading: false,
              width: screenWidth - 40,
              height: 40,
              text: "continue",
              btnIcon: const Icon(Icons.arrow_forward_ios, color: ColorLibrary.bgColor2, size: 16,),
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const GenderScreen();
                }));
              },
              btnBGcolor: ColorLibrary.primaryColor,
              textColor: ColorLibrary.foreColorLight),
        ),
      ),
    );
  }
}
