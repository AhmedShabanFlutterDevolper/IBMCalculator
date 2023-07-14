import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'style/Colors.dart';
import 'moudels/home/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          scaffoldBackgroundColor: BackGroundColor,
          appBarTheme: AppBarTheme(
              color: BackGroundColor,
              titleSpacing: 20,
              toolbarHeight: 100,
              centerTitle: true,
              elevation: 0.0)),
      home: const HomeScrean(),
    );
  }
}
