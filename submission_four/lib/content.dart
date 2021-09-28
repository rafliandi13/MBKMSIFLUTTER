import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail.dart';

class Content extends StatelessWidget {
  final List<String> Nama = [
    "Rafli",
    "Andi",
    "Rifki",
    "Sultan",
    "Yanto",
    "Budi",
    "Rama",
    "Altundri",
    "Cantika",
    "Cici",
    "Uci"
  ];
  final List<String> Alamat = [
    "Palembang",
    "Papua",
    "Manado",
    "Ambon",
    "Palu",
    "Jakarta",
    "Bandung",
    "Lampung",
    "Surabaya",
    "Aceh",
    "Medan"
  ];
  final List<String> Gender = [
    "Laki-Laki",
    "Laki-Laki",
    "Laki-Laki",
    "Laki-Laki",
    "Laki-Laki",
    "Laki-Laki",
    "Laki-Laki",
    "Laki-Laki",
    "Perempuan",
    "Perempuan",
    "Perempuan"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 600,
      padding: EdgeInsets.all(50.0),
      child:ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(
                            text1: Nama[index],
                            text2: Alamat[index],
                            text3: Gender[index],
                          ),
                        ),
                      );
                    },
                    title: Text(Nama[index], style: TextStyle(fontSize: 30)),
                    subtitle: Text('ini subtitle dari ' + Nama[index]),
                    leading: CircleAvatar(
                      child:
                          Text(Nama[index][0], style: TextStyle(fontSize: 20)),
                    )),
              );
            },
            itemCount: Nama.length,
          ),
    );
  }
}
