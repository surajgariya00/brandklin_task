import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget sectionSix() {
  final List<String> imageUrls = [
    "https://s3-alpha-sig.figma.com/img/6bdc/6c38/1942a0af77994537c82fe301dd20bd2f?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PV8lb3f1kTas3wmhyA32OhA7qc0XzFOLjM-FYg2gz4bhSVJgt9G9rXN0XmVZF2ucaJlx1BZbNVhyj4nRrbwOyClR~DuKByJ51ooQZjl5GPitOKbE0QqMsUb9ZggtVD8~nwwHYcw8e1Pjcvin9LsJ8mMskK71bRFP1OBowxUxC1ap1f4Ex35~VApNqFAWY1Eri-a3ZlwX5QIQY72BT6uG~o-6kL75d-YWOnCcZrkR8-59n09xydCiUIPnv7LNLfj205Q6DrltIrBN74g-DE45Mq5vOsWdsaFVwgBGbjphaIRiEULyqMvdWk7kJTJjIvm76XgFu~c5SxY5vbPVvSmPGg__",
    "https://s3-alpha-sig.figma.com/img/6bdc/6c38/1942a0af77994537c82fe301dd20bd2f?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PV8lb3f1kTas3wmhyA32OhA7qc0XzFOLjM-FYg2gz4bhSVJgt9G9rXN0XmVZF2ucaJlx1BZbNVhyj4nRrbwOyClR~DuKByJ51ooQZjl5GPitOKbE0QqMsUb9ZggtVD8~nwwHYcw8e1Pjcvin9LsJ8mMskK71bRFP1OBowxUxC1ap1f4Ex35~VApNqFAWY1Eri-a3ZlwX5QIQY72BT6uG~o-6kL75d-YWOnCcZrkR8-59n09xydCiUIPnv7LNLfj205Q6DrltIrBN74g-DE45Mq5vOsWdsaFVwgBGbjphaIRiEULyqMvdWk7kJTJjIvm76XgFu~c5SxY5vbPVvSmPGg__",
    "https://s3-alpha-sig.figma.com/img/6bdc/6c38/1942a0af77994537c82fe301dd20bd2f?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PV8lb3f1kTas3wmhyA32OhA7qc0XzFOLjM-FYg2gz4bhSVJgt9G9rXN0XmVZF2ucaJlx1BZbNVhyj4nRrbwOyClR~DuKByJ51ooQZjl5GPitOKbE0QqMsUb9ZggtVD8~nwwHYcw8e1Pjcvin9LsJ8mMskK71bRFP1OBowxUxC1ap1f4Ex35~VApNqFAWY1Eri-a3ZlwX5QIQY72BT6uG~o-6kL75d-YWOnCcZrkR8-59n09xydCiUIPnv7LNLfj205Q6DrltIrBN74g-DE45Mq5vOsWdsaFVwgBGbjphaIRiEULyqMvdWk7kJTJjIvm76XgFu~c5SxY5vbPVvSmPGg__",
  ];
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'CAR ',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 20,
                    fontFamily: 'Armstrong',
                    fontWeight: FontWeight.w800,
                    height: 0,
                    letterSpacing: -0.40,
                  ),
                ),
                TextSpan(
                  text: 'COMPARISON',
                  style: TextStyle(
                    color: Color(0xFFAB3839),
                    fontSize: 20,
                    fontFamily: 'Armstrong',
                    fontWeight: FontWeight.w800,
                    height: 0,
                    letterSpacing: -0.40,
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: CarouselSlider.builder(
            itemCount: imageUrls.length,
            itemBuilder: (context, index, realIndex) {
              return Container(
                width: 311,
                height: 180,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.1,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(2),
                  image: DecorationImage(
                    image: NetworkImage(imageUrls[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 180,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ],
    ),
  );
}
