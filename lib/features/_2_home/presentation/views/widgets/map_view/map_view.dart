import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';

import 'custom_marker_view.dart';

class MapView extends StatelessWidget {
  const MapView({
    super.key,
  });

  final double width = 100;
  final double height = 50;
  final String mapUrl = "https://tile.tracestrack.com/_/{z}/{x}/{y}.png"
      "?key=5a5044b63475eaed4f0c7889151bde75";
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(33.4833314, 36.3499986),
        initialZoom: 10,
      ),
      children: [
        TileLayer(
          urlTemplate: mapUrl,
          fallbackUrl: mapUrl,
          // urlTemplate:
          //     "https://api.mapbox.com/styles/v1/ayhm13x/clw62ut9602kt01qr46ac4hyk/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYXlobTEzeCIsImEiOiJjbHc2MXkzNTcxaDhvMmttcTV0NzQ2M3h3In0.rja3psgBxQyRZs0JqCQwqg",
          //open streetmap
          // urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
          //tracestrack map
          // urlTemplate: "https://tile.tracestrack.com/_/{z}/{x}/{y}.png"
          //     "?key=5a5044b63475eaed4f0c7889151bde75",
          //jawg map street
          // urlTemplate: "https://tile.jawg.io/jawg-streets/{z}/{x}/{y}.png"
          //     "?access-token=0O5Ulwj4MFiOrsZWDDdgNrb5acA63uhPdhv6EiAejOZvarrhXDMUfs7V6y5BDjY1",
          //basic map
          // urlTemplate: "https://api.tomtom.com/map/1/tile/basic/main/"
          //     "{z}/{x}/{y}.png?key=I3q83De3VRdNz2blsUoSkropns7mnceu",
          //satellite map
          // urlTemplate: "https://api.tomtom.com/map/1/tile/sat/main/{z}/{x}/{y}"
          //     ".jpg?key=I3q83De3VRdNz2blsUoSkropns7mnceu",
          // additionalOptions: const {
          //   'accessToken':
          //       'pk.eyJ1IjoiYXlobTEzeCIsImEiOiJjbHc2MXkzNTcxaDhvMmttcTV0NzQ2M3h3In0.rja3psgBxQyRZs0JqCQwqg',
          //   'id': 'mapbox.mapbox-streets-v8',
          // },
        ),
        MarkerLayer(
          markers: [
            Marker(
              height: height.h,
              width: width.w,
              point: const LatLng(33.30, 36.17),
              child: const CustomMarkerView(),
            ),
            Marker(
              height: height.h,
              width: width.w,
              point: const LatLng(33.50, 36.30),
              child: const CustomMarkerView(),
            ),
            Marker(
              height: height.h,
              width: width.w,
              point: const LatLng(33.4833314, 36.3499986),
              child: const CustomMarkerView(),
            ),
          ],
        ),
      ],
    );
  }
}
