import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled2/data/location_service/location_service.dart';
import 'package:untitled2/utils/get_theme.dart';
import 'package:untitled2/utils/icons/app_icons.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final locationService = LocationService();
  // late GoogleMapController mapController;
  // late CameraPosition initialCameraPosition;
  // late CameraPosition currentCameraPosition;
  bool onCameraMoveStarted = false;
  String address = "";

  // Future<void> _followMe({required CameraPosition cameraPosition}) async {
  //   final GoogleMapController controller = mapController
  //     ..animateCamera(
  //       CameraUpdate.newCameraPosition(cameraPosition),
  //     );
  // }

  double? lat;
  double? long;

  // Future<void> getLocation() async {
  //   final locationData = await locationService.getLocation();
  //   if (locationData != null) {
  //     lat = locationData.latitude;
  //     long = locationData.longitude;
  //   } else {
  //
  //   }
  // }

  @override
  void initState() {
    // getLocation();
    // initialCameraPosition =
    //     CameraPosition(target: LatLng(lat!, long!), zoom: 15);
    // currentCameraPosition = CameraPosition(
    //     target: LatLng(41, 69), zoom: 15);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent),
        child: Stack(
          children: [
            GoogleMap(
              onCameraMoveStarted: () {
                setState(() {
                  onCameraMoveStarted = true;
                });
              },
              onCameraMove: (CameraPosition cameraPosition) {
                // currentCameraPosition = cameraPosition;
              },
              onCameraIdle: () {
                setState(() {
                  onCameraMoveStarted = false;
                });
              },
              mapType: MapType.hybrid,
              initialCameraPosition: CameraPosition(
                target: LatLng(41, 69),
                zoom: 12.0,
              ),
              onMapCreated: (GoogleMapController controller) {
                setState(() {
                  // mapController = controller;
                  _applyCustomMapStyle();
                });
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.w, vertical: 150.h),
                child: Container(
                  padding: EdgeInsets.all(6.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black38,
                  ),
                  child: Text(
                    address,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Align(
                child: SvgPicture.asset(
              AppIcons.arrowDown3,
              height: onCameraMoveStarted ? 70.w : 60.w,
              width: onCameraMoveStarted ? 70.w : 52.w,
            )),
          ],
        ),
      ),
    );
  }

  Future<void> _applyCustomMapStyle() async {
    String style = await rootBundle.loadString('assets/styles/map_style.json');
    String darkStyle =
        await rootBundle.loadString('assets/styles/map_style_dark.json');
    if (!context.mounted) return;
    // mapController.setMapStyle(getTheme(context) ? darkStyle : style);
  }
}
