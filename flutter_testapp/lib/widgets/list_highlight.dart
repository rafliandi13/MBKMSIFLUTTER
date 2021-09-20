import 'package:flutter/material.dart';
import 'package:flutter_testapp/data/data.dart';

class ListHighlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: highlightItems.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage(highlightItems[index].thumbnail),
                        radius: 28,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      highlightItems[index].title,
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              )
            ],
          );
        },
      ),
    );
  }
}
