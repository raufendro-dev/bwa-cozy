import 'package:bwa_cozy/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import 'theme/colorPalette.dart';
import 'theme/styleText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
