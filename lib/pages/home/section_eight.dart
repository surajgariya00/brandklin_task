import 'package:brandklin_task/components/custom_youtube_card.dart';
import 'package:brandklin_task/model/dummy_youtube_data.dart';
import 'package:flutter/material.dart';

Widget sectionEight() {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (final cardData in dummyCardDataList)
                CustomYoutubeCard(
                  imagePath: cardData.imagePath,
                  title: cardData.title,
                  description: cardData.description,
                ),
            ],
          ),
        ),
      ),
    ],
  );
}
