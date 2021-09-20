import 'package:flutter/material.dart';

class ActionHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 310,
          child: OutlinedButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child:
                  Text("Edit Profile", style: TextStyle(color: Colors.black)),
            ),
            style: OutlinedButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: Size(0, 35),
                side: BorderSide(
                  color: (Colors.grey[400])!,
                )),
            onPressed: () => print("Edit Profie"),
          ),
        ),
        SizedBox(
          width: 60,
          child: OutlinedButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                'assets/icons/arrowdown.png',
                height: 30,
                width: 30,
              ),
            ),
            style: OutlinedButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: Size(0, 35),
                side: BorderSide(
                  color: (Colors.grey[400])!,
                )),
            onPressed: () => print("Others"),
          ),
        ),
      ],
    );
  }
}
