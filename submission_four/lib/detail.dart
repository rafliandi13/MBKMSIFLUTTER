import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String text1, text2, text3;

  Detail(
      {Key? key, required this.text1, required this.text2, required this.text3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Screen")),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: text1,
                border: OutlineInputBorder(),
                labelText: "Nama",
                contentPadding: EdgeInsets.all(20.0),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: text2,
                border: OutlineInputBorder(),
                labelText: "Alamat",
                contentPadding: EdgeInsets.all(20.0),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: text3,
                border: OutlineInputBorder(),
                labelText: "Gender",
                contentPadding: EdgeInsets.all(20.0),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text("Edit"),
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                side: BorderSide(
                    color: Colors.blue, width: 10, style: BorderStyle.solid),
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
