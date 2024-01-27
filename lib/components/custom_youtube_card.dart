import 'package:flutter/material.dart';

class CustomYoutubeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final LinearGradient? linearGradient;
  const CustomYoutubeCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.linearGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, top: 5),
      height: 260,
      width: 250,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          if (linearGradient != null)
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return linearGradient!.createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset(
                imagePath,
                width: 240,
                height: 200,
                fit: BoxFit.cover,
              ),
            )
          else
            Image.asset(
              imagePath,
              width: 240,
              height: 200,
              fit: BoxFit.cover,
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
          Positioned(
            bottom: 2,
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
