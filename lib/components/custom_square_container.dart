import 'package:flutter/material.dart';

class CustomSquareContainer extends StatefulWidget {
  final String amount;

  const CustomSquareContainer(this.amount, {super.key});

  @override
  CustomSquareContainerState createState() => CustomSquareContainerState();
}

class CustomSquareContainerState extends State<CustomSquareContainer> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: Container(
        width: isTapped ? 85 : 75,
        height: isTapped ? 85 : 75,
        color: isTapped ? Color(0xFFAB373A) : Color(0xFF828282),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'UNDER',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              Text(
                widget.amount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'LAKHS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
