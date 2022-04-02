import 'package:flutter/material.dart';
import 'package:ui_flutter_design/flat_detis.dart/flat_detis.dart';
import 'package:ui_flutter_design/screen/landing_screen.dart';
import 'package:ui_flutter_design/widgets/contans.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: COLOR_WHITE,
        accentColor: COLOR_DARK_BLUE,
      ),
      home: LandingPage(),
    );
  }
}
