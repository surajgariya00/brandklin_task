import 'package:brandklin_task/model/dummy_data.dart';
import 'package:flutter/material.dart';

class CustomPictureCard extends StatelessWidget {
  final DummyCarData data;

  const CustomPictureCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 200,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                data.price,
                style: const TextStyle(
                  color: Color(0xFFAB373A),
                  fontSize: 12.56,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Column(
                children: [
                  Text(
                    data.onwards,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 9.49,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.19,
                    ),
                  ),
                  Text(
                    '${data.exShowroomPrice}\n',
                    style: TextStyle(
                      color: Color(0xFF5D5C5A),
                      fontSize: 4.29,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.13,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 1, horizontal: 7),
                decoration: BoxDecoration(
                  color: Color(0xFFE5E5E5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      data.rating.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 16,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.bookmark,
                color: Colors.grey,
              )
            ],
          ),
          Image.asset(
            'assets/car.png',
            height: 90,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 10),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${data.modelName}\n',
                  style: TextStyle(
                    color: Color(0xFF5D5C5A),
                    fontSize: 10.74,
                    fontFamily: 'Armstrong',
                    fontWeight: FontWeight.w800,
                    height: 0,
                    letterSpacing: -0.32,
                  ),
                ),
                TextSpan(
                  text: data.modelType,
                  style: TextStyle(
                    color: Color(0xFFAB373A),
                    fontSize: 10.74,
                    fontFamily: 'Armstrong',
                    fontWeight: FontWeight.w800,
                    height: 0,
                    letterSpacing: -0.32,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.chair,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${data.seatingCapacity}',
                        style: TextStyle(
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_gas_station_rounded,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        data.fuelType,
                        style: TextStyle(
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
                      Icon(
                        Icons.chair,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        data.safetyRating,
                        style: TextStyle(
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_gas_station_rounded,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${data.transmissionType}',
                        style: TextStyle(
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
    );
  }
}
