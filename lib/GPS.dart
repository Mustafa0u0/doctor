import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class gps extends StatelessWidget {
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(18.071250, -15.963415),
    zoom: 11.5,
  );

  gps({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff59C748),
        title: const Text(
          'تحديد موقعك',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontFamily: 'cairo'),
        ),
      ),
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: true,
        initialCameraPosition: _kGooglePlex,
      ),
    );
  }
}
