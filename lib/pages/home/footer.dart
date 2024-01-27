import 'package:flutter/material.dart';

Widget footer() {
  return Container(
    width: double.infinity,
    height: 120,
    color: Colors.black,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                'KILN',
                style: TextStyle(
                  color: Color(0xFFEEA026),
                  fontSize: 19.11,
                  fontFamily: 'Cloudsters',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: 1.34,
                ),
              ),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 67, 67, 67),
              child: Icon(
                Icons.email_outlined,
                size: 50,
              ),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 67, 67, 67),
              child: Icon(
                Icons.email_outlined,
                size: 50,
              ),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 67, 67, 67),
              child: Icon(
                Icons.email_outlined,
                size: 50,
              ),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 67, 67, 67),
              child: Icon(
                Icons.email_outlined,
                size: 50,
              ),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 67, 67, 67),
              child: Icon(
                Icons.email_outlined,
                size: 50,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
