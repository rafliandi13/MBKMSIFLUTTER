import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

enum SingingCharacter { lakilaki, perempuan }

class _EditProfileScreenState extends State<EditProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  bool Facebook = false;
  bool Twitter = false;
  bool Linkedin = false;
  SingingCharacter? _character;

  final Controller2 = TextEditingController();
  final Controller1 = TextEditingController();
  final Controller3 = TextEditingController();
  String? media;
  var formatter = new DateFormat('yyyy-MM-dd');
  DateTime fromDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime toDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  bool showErrorMessage = false;
  bool showErrorMessageRadioButton = false;

  Future<DateTime> selectDate(BuildContext context, DateTime _date) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );

    if (picked != null) {
      _date = picked;
    }
    return _date;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: (Colors.grey[200])!,
              ),
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Edit Profile",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            centerTitle: false,
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () => print("Menu"),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
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
                              labelText: "Nama Pengguna",
                              contentPadding: EdgeInsets.all(20.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Masukan Nama Pengguna !';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: Controller3,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Bio",
                              contentPadding: EdgeInsets.all(20.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Masukan Bio !';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10),
                          Text("Social Media Yang Dipunya : "),
                          CheckboxListTile(
                            title: Text('Facebook'),
                            value: Facebook,
                            onChanged: (bool? value) {
                              setState(() {
                                Facebook = value!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            title: Text('Twitter'),
                            value: Twitter,
                            onChanged: (bool? value) {
                              setState(() {
                                Twitter = value!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            title: Text('Linkedin'),
                            value: Linkedin,
                            onChanged: (bool? value) {
                              setState(() {
                                Linkedin = value!;
                              });
                            },
                          ),
                          showErrorMessage
                              ? Container(
                                  child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        'Pilih CheckBox!',
                                        style: TextStyle(color: Colors.red),
                                      )))
                              : Container(),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Pilih Tanggal Lahir'),
                      IconButton(
                          onPressed: () async {
                            fromDate = await selectDate(context, fromDate);
                            setState(() {});
                          },
                          icon: Icon(Icons.calendar_today)),
                      Text('${formatter.format(fromDate)}')
                    ],
                  ),
                  ListTile(
                    title: const Text('Perempuan'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.perempuan,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Laki - Laki'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.lakilaki,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value!;
                        });
                      },
                    ),
                  ),
                  showErrorMessageRadioButton
                      ? Container(
                          child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Pilih Salah Satu !',
                                style: TextStyle(color: Colors.red),
                              )))
                      : Container(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        side: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                            style: BorderStyle.solid),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.

                        switch (_character) {
                          case SingingCharacter.lakilaki:
                            media = 'Laki - Laki';
                            break;
                          case SingingCharacter.perempuan:
                            media = 'Perempuan';
                            break;
                        }
                        if (_formKey.currentState!.validate()) {
                          // Process data.
                          if ((Facebook != true &&
                              Twitter != true &&
                              Linkedin != true)) {
                            setState(() => showErrorMessage = true);
                          } else if (media == null) {
                            setState(() => showErrorMessageRadioButton = true);
                            setState(() => showErrorMessage = false);
                          } else {
                            setState(() => showErrorMessageRadioButton = false);
                            setState(() => showErrorMessage = false);
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  // Retrieve the text the that user has entered by using the
                                  // TextEditingController.
                                  title: const Text(
                                      'Apakah Anda Ingin Menyimpan Data ?'),
                                  content: Text('Nama : ' +
                                      Controller1.text +
                                      '\n' +
                                      'Nama Pengguna: ' +
                                      Controller2.text +
                                      '\n'
                                          'Bio : ' +
                                      Controller1.text +
                                      '\n' +
                                      'Social Media : ' +
                                      (Facebook ? 'Facebook' : '') +
                                      (Twitter ? ',Twitter' : '') +
                                      (Linkedin ? ',Linkedin' : '') +
                                      '\nTanggal Lahir : ' +
                                      '${formatter.format(fromDate)}\n' +
                                      'Gender : ' +
                                      media!),
                                  actions: [
                                    TextButton(
                                      child: Text("Cancel"),
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                    ),
                                    TextButton(
                                      child: Text("Ok"),
                                      onPressed: () =>
                                          Navigator.pop(context, 'Ok'),
                                    )
                                  ],
                                );
                              },
                            );
                          }
                        }
                      },
                      child: const Text('Simpan'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
