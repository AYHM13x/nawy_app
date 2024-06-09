import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import '../../../widgets/map_view/custom_marker_view.dart';

class CustomMapChoose extends StatefulWidget {
  const CustomMapChoose({super.key});

  @override
  State<CustomMapChoose> createState() => _CustomMapChooseState();
}

class _CustomMapChooseState extends State<CustomMapChoose> {
  final double width = 100;
  final double height = 50;
  final String mapUrl =
      "https://tile.tracestrack.com/_/{z}/{x}/{y}.png?key=5a5044b63475eaed4f0c7889151bde75";
  final MapController _mapController = MapController();
  List<Marker> _markers = [];

  // Define the geographical bounds of the Arab world
  final LatLngBounds arabWorldBounds = LatLngBounds(
    LatLng(15.0, 35.0), // Southwest corner (e.g., southwestern Yemen)
    LatLng(32.0, 60.0), // Northeast corner (e.g., northeastern Iran)
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.amber,
          width: 327,
          height: 356,
          child: FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              bounds: arabWorldBounds,
              boundsOptions: FitBoundsOptions(padding: EdgeInsets.all(8.0)),
              initialCenter:
                  LatLng(24.0, 45.0), // Center in the middle of the Gulf region
              initialZoom: 10,
              maxZoom: 18,
              minZoom: 4,
            ),
            children: [
              TileLayer(
                urlTemplate: mapUrl,
                fallbackUrl: mapUrl,
              ),
              MarkerLayer(markers: _markers),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250.w,
              child: ElevatedButton(
                onPressed: () {
                  if (_markers.isEmpty) {
                    _addMarker();
                  } else {
                    _changeMarker();
                  }
                },
                child: const Text("اختر على الخريطة"),
              ),
            ),
            if (_markers.isNotEmpty)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: AppColors.redColor,
                ),
                onPressed: _deleteMark,
                child: const Text("حذف"),
              ),
          ],
        ),
      ],
    );
  }

  Marker? markerData() {
    final center = _mapController.center;
    print('Marker added at: ${center.latitude}, ${center.longitude}');
    if (_isWithinBounds(center)) {
      return Marker(
        width: width.w,
        height: height.h,
        point: center,
        child: const CustomMarkerView(),
      );
    } else {
      showMsg();
      return null;
    }
  }

  void _addMarker() {
    final maker = markerData();
    if (maker != null) {
      setState(() {
        _markers.add(maker);
      });
    }
  }

  void _changeMarker() {
    final maker = markerData();
    if (maker != null) {
      setState(() {
        _markers.first = maker;
      });
    }
  }

  void _deleteMark() {
    setState(() {
      _markers.clear();
    });
  }

  bool _isWithinBounds(LatLng point) {
    return arabWorldBounds.contains(point);
  }

  void showMsg() {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("لا يمكن اضافة موقع خارج دول الخليج")));
    print('Marker location is outside the allowed bounds.');
  }
}
