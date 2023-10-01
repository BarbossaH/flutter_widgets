import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:mynotes/components/header_bar.dart';
import 'package:mynotes/config/app_icons.dart';
import 'package:mynotes/config/app_strings.dart';

class NearByPage extends StatelessWidget {
  const NearByPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(title: AppStrings.nearBy),
      body: FlutterMap(
        options: MapOptions(
            center: const LatLng(-36.88040107150388, 174.70778645416564),
            zoom: 9),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          MarkerLayer(
            markers: [
              Marker(
                  width: 100,
                  height: 50,
                  point: const LatLng(-36.8804, 174.7077),
                  builder: (context) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9))),
                          child: const Text(
                            "Julian",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SvgPicture.asset(
                          AppIcons.icLocation,
                          colorFilter: const ColorFilter.mode(
                              Colors.red, BlendMode.srcIn),
                        )
                      ],
                    );
                  })
            ],
          )
        ],
      ),
    );
  }
}
