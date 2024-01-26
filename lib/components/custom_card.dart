import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;

  CustomCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2, // Add elevation for a shadow effect
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(2), // Adjust the border radius as needed
      ),
      child: SizedBox(
        width: 126,
        height: 35,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF828282),
              fontSize: 9,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,
              letterSpacing: 1.61,
            ),
          ),
        ),
      ),
    );
  }
}
