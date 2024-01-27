import 'package:brandklin_task/components/custom_youtube_card.dart';
import 'package:brandklin_task/model/dummy_youtube_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget sectionFive() {
  return Container(
    height: 280,
    child: Row(
      children: [
        Container(
          height: 260,
          width: 80, // Set the width for the first container
          decoration: const BoxDecoration(color: Color(0xFFF9F9F9)),
          child: Row(
            children: [
              Container(
                width: 10,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                height: 260,
                width: 70,
                decoration: BoxDecoration(color: Color(0xFFAB373A)),
                child: Transform.rotate(
                  angle: -90 * 3.14 / 180,
                  child: const Center(
                    child: Text(
                      'YOUTUBE VIDEOS',
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final cardData in dummyCardDataList)
                  CustomYoutubeCard(
                    linearGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Color(0x33FF9820).withOpacity(0.5),
                      ],
                    ),
                    imagePath: cardData.imagePath,
                    title: cardData.title,
                    description: cardData.description,
                  ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
