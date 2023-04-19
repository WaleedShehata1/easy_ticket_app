// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Map2Screen extends StatelessWidget {
  static const String route = '/';

  const Map2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
     
      body: Column(
        children: [
          Flexible(
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(30, 33),
                zoom:7,
              ),

              children: [
                TileLayer(
                  urlTemplate:
                      'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
          ],
            ),
          ),
        ],
      ),
    );
  }
}
