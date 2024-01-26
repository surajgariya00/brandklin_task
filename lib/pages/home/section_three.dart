import 'package:flutter/material.dart';
import 'package:brandklin_task/components/custom_data_show.dart';
import 'package:brandklin_task/model/dummy_data.dart';

Widget sectionThree(List<DummyCarData> dummyDataList) {
  return Stack(
    children: [
      Container(
        height: 414,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.85, -0.52),
            end: Alignment(-0.85, 0.52),
            colors: [Color(0xFFD3D3D3), Color(0xFFDEDEDE)],
          ),
        ),
        child: Center(
          child: Container(
            height: 114,
            color: Colors.white,
          ),
        ),
      ),
      Positioned.fill(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'FEATURED ',
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
                      text: 'CARS',
                      style: TextStyle(
                        color: Color(0xFFAB373A),
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
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 341,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                ),
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dummyDataList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomPictureCard(data: dummyDataList[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
