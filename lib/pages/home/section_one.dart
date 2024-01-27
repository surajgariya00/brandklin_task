import 'package:brandklin_task/components/custom_data_show.dart';
import 'package:brandklin_task/components/custom_square_container.dart';
import 'package:brandklin_task/model/dummy_data.dart';
import 'package:flutter/material.dart';

Widget sectionOne(List<DummyCarData> dummyDataList) {
  return Container(
    padding: EdgeInsets.only(bottom: 1),
    width: 420,
    height: 410,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://s3-alpha-sig.figma.com/img/0b2f/9afe/05625dfdaa43b7c71915d18ad0514a5f?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iacfX8-I00T5hfRNbsXjBFRBLBzDchv7VN5hhETfW~ePkbxrpCXEjV7Ddisy7YOUMo98FV0LoLjL57CMhPWkQ6~t9PW5BzlqkKDrdEdlXXjn7e3Q~SaSPp4fa1X7kNYfsK~KO~~2Rw2j0GIpO6bQ3ArS4KA~9PFnJMAWS~lh5vajNtrp-eJypSfy88q9g7J19RpVyGEFWMgoG1bbIwsgU1qEFtfGpermbY4iXiMAzH20ZefPlvJ8J83K1nHgypPoZHa3UtD~E~d8ZUU9ywTQi1w1PTqHK~39j7Hz-~4Lhu0Py9KLaZUTg6HjQXCr92Vdxkt5~3P-yQjcFISmH9nUFQ__",
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CustomSquareContainer('10'),
            Container(
              width: 2,
              height: 50,
              color: Colors.grey,
            ),
            const CustomSquareContainer('20'),
            Container(
              width: 2,
              height: 50,
              color: Colors.grey,
            ),
            const CustomSquareContainer('30'),
            Container(
              width: 2,
              height: 50,
              color: Colors.grey,
            ),
            const CustomSquareContainer('40'),
          ],
        ),
        const SizedBox(height: 30),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dummyDataList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomPictureCard(data: dummyDataList[index]),
              );
            },
          ),
        ),
      ],
    ),
  );
}
