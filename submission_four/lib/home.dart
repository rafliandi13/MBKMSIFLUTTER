import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_four/content.dart';
import 'detail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Home")),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Content(),
          ],
        ),
      ),
    );
  }
}
