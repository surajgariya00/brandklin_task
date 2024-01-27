import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget footer() {
  return Container(
    width: double.infinity,
    height: 140,
    color: Colors.black,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 150,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(255, 107, 107, 107),
                      width: 1,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 18,
                    backgroundColor: Color.fromARGB(255, 36, 36, 36),
                    child: Icon(
                      CupertinoIcons.mail_solid,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(255, 107, 107, 107),
                      width: 1,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 18,
                    backgroundColor: Color.fromARGB(255, 36, 36, 36),
                    child: Icon(
                      CupertinoIcons.f_cursive,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 107, 107, 107),
                      width: 1,
                    ),
                  ),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
                      child: Image.asset(
                        'assets/twitter.png',
                        color: Colors.grey,
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 107, 107, 107),
                      width: 1,
                    ),
                  ),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
                      child: Image.asset(
                        'assets/Youtube.png',
                        color: Colors.grey,
                        width: 24,
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 107, 107, 107),
                      width: 1,
                    ),
                  ),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Color.fromARGB(255, 36, 36, 36),
                      child: Image.asset(
                        'assets/insta.png',
                        color: Colors.grey,
                        width: 18,
                      )),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '@ 2023',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Powered by',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Image.asset(
                'assets/logo.png',
                width: 80,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
