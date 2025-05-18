import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'app.dart';

//stateless widget: je widget ta changeable na seta stateless
//statefull weidget: je screen ta changeable seta statefull
void main() {
  runApp( DevicePreview(// how do show any type  device this app
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),);
}




