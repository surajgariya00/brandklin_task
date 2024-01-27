import 'package:flutter/material.dart';

class CustomYoutubeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const CustomYoutubeCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, top: 5),
      height: 260,
      width: 250,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.white,
        //     spreadRadius: 2,
        //     blurRadius: 5,
        //     offset: Offset(0, 3),
        //   ),
        // ],
      ),
      child: Stack(
        children: [
          // Apply LinearGradient to the background image
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Color(0x33FF9820),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              imagePath,
              width: 240,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Image.asset(
                  'assets/Youtube.png',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
          // Other widgets like title and description can be added here
          Positioned(
            bottom: 8,
            left: 2,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF848484),
                    fontSize: 11,
                    fontFamily: 'Armstrong',
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.22,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 11,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
