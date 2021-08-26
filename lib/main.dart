
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive/constants.dart';
import 'package:responsive/dektop.dart';
import 'package:responsive/mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(builder: (BuildContext context) {
          print(MediaQuery.of(context).size.width);
          if (MediaQuery.of(context).size.width <= 580)
            return MediaQuery(
                data: MediaQueryData(textScaleFactor: 0.8),
                child: MobileScreen());
          return MediaQuery(
              data: MediaQueryData(textScaleFactor: 1.25),
              child: DesktopScreen());
        }));
  }
}
