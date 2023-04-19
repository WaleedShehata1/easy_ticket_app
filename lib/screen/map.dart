
// ignore_for_file: prefer_typing_uninitialized_variables, prefer_final_fields, avoid_unnecessary_containers

import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

import '../widget/location_helper.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});
static const String routeName = 'map';

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  
 static Position? position;
Completer<GoogleMapController> _mapController = Completer();

  static final CameraPosition _myCurrentLocationCameraPosition = CameraPosition(
    bearing: 0.0,
    target: LatLng(position!.latitude ,position!.longitude),
    tilt: 0.0,
    zoom: 17,

  );
  Future<void> getMyCurrentLocation() async {
    bool serviceEnabled;
LocationPermission permission;

serviceEnabled = await Geolocator.isLocationServiceEnabled();
if (!serviceEnabled) {
  return Future.error('Location services are disabled');
}

permission = await Geolocator.checkPermission();
if (permission == LocationPermission.denied) {
  permission = await Geolocator.requestPermission();
  if (permission == LocationPermission.denied) {
    return Future.error('Location permissions are denied');
  }
}

if (permission == LocationPermission.deniedForever) {
  return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
}
   await LocationHelper.determineCurrentLocation();
   position =await Geolocator.getLastKnownPosition().whenComplete(() {
    setState(() {});
   });
  }
   @override
     initState(){
 super.initState();
  getMyCurrentLocation();
}
 Widget buildMap(){
  return GoogleMap(
    mapType: MapType.normal,
    myLocationEnabled: true,
    zoomControlsEnabled: true,
    myLocationButtonEnabled: false,
    initialCameraPosition: _myCurrentLocationCameraPosition,
    onMapCreated: (GoogleMapController conteoller){
    _mapController.complete(conteoller);
    },
    );
 }
 Future<void> _goToMyCurrentLocation()async{
   final GoogleMapController  controller = await _mapController.future;
   controller.animateCamera(CameraUpdate.newCameraPosition(_myCurrentLocationCameraPosition));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          position!=null?buildMap():Center(
            child: Container(
              child: const CircularProgressIndicator(
                color:Colors.blue,
              ),
            ),
          )
        ]
        ),
        floatingActionButton: Container(margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
        child:FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: _goToMyCurrentLocation,
          child: const Icon(Icons.place,color: Colors.white,),
        ) ,
        ),
    );
  }
}