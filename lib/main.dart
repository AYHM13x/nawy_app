import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:nawy_app/core/utlis/assets/app_font_families.dart';

void main() {
  runApp(const NawyApp());
}

class NawyApp extends StatelessWidget {
  const NawyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppFontFamilies.cairoFont,
      ),
      home: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(33.30, 36.17),
        initialZoom: 10,
      ),
      children: [
        TileLayer(
          urlTemplate:
              "https://api.mapbox.com/styles/v1/ayhm13x/clw62ut9602kt01qr46ac4hyk/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYXlobTEzeCIsImEiOiJjbHc2MXkzNTcxaDhvMmttcTV0NzQ2M3h3In0.rja3psgBxQyRZs0JqCQwqg",
          // urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          // userAgentPackageName: 'com.example.app',
          additionalOptions: const {
            'accessToken':
                'pk.eyJ1IjoiYXlobTEzeCIsImEiOiJjbHc2MXkzNTcxaDhvMmttcTV0NzQ2M3h3In0.rja3psgBxQyRZs0JqCQwqg',
            'id': 'mapbox.mapbox-streets-v8',
          },
        ),
        const MarkerLayer(
          markers: [
            Marker(
              point: LatLng(33.30, 36.17),
              child: Icon(
                Icons.pin_drop,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
