import 'package:brandklin_task/model/dummy_data.dart';
import 'package:flutter/material.dart';

class CustomPictureCard extends StatelessWidget {
  final DummyCarData data;

  const CustomPictureCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      shadowColor: Colors.grey,
      child: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.2,
          ),
          borderRadius: BorderRadius.circular(3),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  data.price,
                  style: const TextStyle(
                    color: Color(0xFFAB373A),
                    fontSize: 15.56,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  children: [
                    Text(
                      data.onwards,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 9.49,
                        height: 0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.19,
                      ),
                    ),
                    Text(
                      '${data.exShowroomPrice}\n',
                      style: const TextStyle(
                        color: Color(0xFF5D5C5A),
                        fontSize: 4.29,
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: -0.13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFAB373A),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        data.rating.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 8,
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.bookmark,
                  color: Color(0xFF5D5C5A),
                  size: 17,
                )
              ],
            ),
            Image.asset(
              'assets/car.png',
              height: 100,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${data.modelName}\n',
                    style: const TextStyle(
                      color: Color(0xFF5D5C5A),
                      fontSize: 12.74,
                      fontFamily: 'Armstrong',
                      fontWeight: FontWeight.w800,
                      height: 0,
                      letterSpacing: -0.32,
                    ),
                  ),
                  TextSpan(
                    text: data.modelType,
                    style: const TextStyle(
                      color: Color(0xFFAB373A),
                      fontSize: 12.74,
                      fontFamily: 'Armstrong',
                      fontWeight: FontWeight.w800,
                      height: 0,
                      letterSpacing: -0.32,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.chair_alt_outlined,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${data.seatingCapacity} \n Seater',
                          style: const TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 7.52,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: -0.23,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.local_gas_station_rounded,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          data.fuelType,
                          style: const TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 7.52,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: -0.23,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.pie_chart_rounded,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          data.safetyRating,
                          style: const TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 7.52,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                            letterSpacing: -0.23,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.wrap_text_outlined,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          data.transmissionType,
                          style: const TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 7.52,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                            letterSpacing: -0.23,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
