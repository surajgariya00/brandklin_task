import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;

  const CustomCard(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      child: SizedBox(
        width: 126,
        height: 30,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF828282),
              fontSize: 10,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              height: 0,
              letterSpacing: 1.61,
            ),
          ),
        ),
      ),
    );
  }
}
