import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_four/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SpalshScreen createState() => _SpalshScreen();
}

class _SpalshScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.width / 2.5)
    );
  }
}
