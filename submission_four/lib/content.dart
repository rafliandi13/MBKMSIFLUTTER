import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail.dart';

class Content extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Controller2 = TextEditingController();
  final Controller1 = TextEditingController();
  final Controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: Controller1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nama",
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukan Nama !';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: Controller2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Alamat",
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukan Alamat !';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: Controller3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nomor Handphone",
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukan Nomor Handphone !';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  Padding(
                      padding:
                      const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              side: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(5.0)),
                            ),
                            onPressed: () {
                              // Validate will return true if the form is valid, or false if
                              // the form is invalid.

                              if (_formKey.currentState!.validate()) {
                                _sendDataToSecondScreen(
                                    context,
                                    Controller1.text,
                                    Controller2.text,
                                    Controller3.text);
                              }
                            },
                            child: const Text('Kirim Dengan Data'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              side: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(5.0)),
                            ),
                            onPressed: () {
                              // Validate will return true if the form is valid, or false if
                              // the form is invalid.
                              _sendDataToSecondScreen(context, '', '', '');
                            },
                            child:
                            const Text('Kirim Tidak Dengan Data'),
                          ),
                        ],
                      )),
                ],
              )),
        ],
      ),
    );
  }

  void _sendDataToSecondScreen(BuildContext context, String text1, String text2,
      String text3) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              Detail(
                text1: text1,
                text2: text2,
                text3: text3,
              ),
        ));
  }
}