// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class Map2Screen extends StatefulWidget {
  static const String route = 'mapBox';

  const Map2Screen({Key? key}) : super(key: key);

  @override
  State<Map2Screen> createState() => _Map2ScreenState();
}

class _Map2ScreenState extends State<Map2Screen> {

MapboxMapController? mapController;
  void _onMapCreated(MapboxMapController controller) {
   mapController =controller;
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
     
      body: MapboxMap(
        onMapCreated: _onMapCreated,

        initialCameraPosition: const CameraPosition(
          target: LatLng(0.0, 0.0))
        ),
    );
  }

}
