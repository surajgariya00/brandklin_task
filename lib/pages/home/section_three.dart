import 'package:brandklin_task/components/rombus_shape.dart';
import 'package:flutter/material.dart';
import 'package:brandklin_task/components/custom_data_show.dart';
import 'package:brandklin_task/model/dummy_data.dart';

Widget sectionThree(List<DummyCarData> dummyDataList) {
  return Stack(
    children: [
      Container(
        height: 405,
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
              padding: EdgeInsets.only(left: 70.0, top: 20),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'FEATURED ',
                      style: TextStyle(
                        color: Color(0xFF828282),
                        fontSize: 25,
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
                        fontSize: 25,
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
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    border: Border(
                      top: BorderSide(
                        width: 1.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  width: 341,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'POPULAR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          letterSpacing: -0.26,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: CustomPaint(
                          painter: CustomRombusShape(),
                          child: Center(
                            child: Transform.translate(
                                offset: const Offset(4, -1),
                                child: const Text(
                                  'NEW',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    letterSpacing: -0.24,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      const Text(
                        'UPCOMING',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF404040),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: -0.24,
                        ),
                      )
                      // SizedBox(
                      //   width: 150,
                      //   height: 40,
                      //   child: CustomPaint(
                      //     painter: CustomRombusShape(),
                      //     child: Center(
                      //       child: Transform.translate(
                      //         offset: const Offset(16, -1),
                      //         child: const Text(
                      //           'LOAD MORE',
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 18,
                      //             fontFamily: 'Montserrat',
                      //             fontWeight: FontWeight.w700,
                      //             height: 0,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 310,
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
