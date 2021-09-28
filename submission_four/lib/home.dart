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
        child: Column(
          children: [
            Content(),
            ElevatedButton(
              child: Text("Tambah"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(
                      text1: '',
                      text2: '',
                      text3: '',
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                side: BorderSide(
                    color: Colors.blue, width: 2.0, style: BorderStyle.solid),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
