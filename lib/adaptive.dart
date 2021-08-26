import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveScreen extends StatelessWidget {
  String os;

  AdaptiveScreen({required this.os});

  @override
  Widget build(BuildContext context) {
    if(this.os == 'android')
      return CircularProgressIndicator();
    return CupertinoActivityIndicator();
  }
}
