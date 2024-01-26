import 'dart:ffi';

import 'package:brandklin_task/components/custom_card.dart';
import 'package:brandklin_task/model/dummy_data.dart';
import 'package:brandklin_task/pages/home/section_four.dart';
import 'package:brandklin_task/pages/home/section_one.dart';
import 'package:brandklin_task/pages/home/section_three.dart';
import 'package:brandklin_task/pages/home/section_two.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<DummyCarData> dummyDataList = dummyCarDataList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          children: [
            Text(
              'BRANDKLIN',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: 8),
          ],
        ),
        actions: const [
          Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          SizedBox(width: 16),
          // Drawer(
          //   backgroundColor: Colors.white,
          // ),
          SizedBox(width: 16),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://s3-alpha-sig.figma.com/img/36c2/afa3/ca5b85d491abb6ac59f9a507bee25b12?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OFXSS1F-1w~G27u09b-csb5PwgktgiB4CRJTS~o8yeucVsQzyT3qsivPZsD0SSCdIPW79qXaQsPLn8IQLy2jK2WrWpdZZTOVb89~tTDOmvhXW8AnQkm7UJjJt1mVBKlq0gJXWLUPaVXecdxzsSDmVMwEMKgaf3IXAlRIzQ40F9VzKdlYxMxp6xXqj6Tr606PhYEsOZlvxHAGFECu4E~o3EqcSbOKgOWI8QvHrHNEKcezqLIFZsAD5mFuzD94aGTyhTHC4g3sB4kAQ9iDWtjrwiiZI~qnOf0tHJ1MTiymMMlAnOA9LQEj4c2cpvsFoQmsuxgAZqXNeSzw8PjLQzMQFg__",
                scale: 1.0),
            radius: 16,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/2289/4867/64917c827a917b217a2950fac8e826d7?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WWqhZ-5SC25eQNi-Jv5ltcJvAXj7NeLJMqmswiebW8J2a4e-9ivcyT7HaubX85xvt6LYPKApFXtMFEuoV2ZE7YMUPJUfdZuWPRdC7c75JNHF7p4guFb4Hd8uo-91oQJc2NGxYNUkSvLL~4ffhzDAbKFszKkOjT9~ntR3x0rouZav5yn03QK8v4aPFxvJC1QqxOO3cJh3-4OL7V0arecufMGMKTTDHyKwL1BhSfPxfm134onyyof90jYebSCF46TKTiLFM5Wc6l-Y8AhTe5W1olPk~FywA5Ub0C5VySjannPRmV1ich2USNbPOvnkdLGYNgXR6VD-DFF9eih5TAv6-w__',
                      scale: 1.0),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'FIND YOUR ',
                      style: TextStyle(
                        color: Color(0xFF828282),
                        fontSize: 19.90,
                        fontFamily: 'Armstrong',
                        fontWeight: FontWeight.w800,
                        height: 0,
                        letterSpacing: -0.26,
                      ),
                    ),
                    TextSpan(
                      text: 'PERFECT CAR',
                      style: TextStyle(
                        color: Color(0xFFAB373A),
                        fontSize: 19.90,
                        fontFamily: 'Armstrong',
                        fontWeight: FontWeight.w800,
                        height: 0,
                        letterSpacing: -0.26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomCard('SEARCH'),
                CustomCard('ASSIST ME'),
                CustomCard('CONTACT US'),
              ],
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 17.0),
              child: Text('Eg: Tata Nexon'),
            ),
            const SizedBox(
              height: 15,
            ),
            sectionOne(dummyDataList),
            sectionTwo(),
            sectionThree(dummyDataList),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/ea83/3dd6/7c93ae1c930c0fdb9d805ac6091fb1b3?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mUZrwdPi9qDvspmCqgWB~OqHr7VL6nEXsxkDj5qXBZzu0vrPvQzYYmn6Eam~h6Gp34dg6WO2fTHAXWI10L-oRFIsiaGxXykUAi28fjYFMvp4Rk0IrgY65GWEKyOnkWEsjlmi2IsO23o-JdhViGlIp41rF0w3ky26dc456RkaNKxQTUWkwyDUY3984oJfylFA2mcQxuTp-~MzDaBFkyU7TDVJgwRIYEferYntZhdN5KyaKal5Dmtxo1dDXjBFmn4Kx~XFpWlLBA7fCGkZXGnnvHquqcWVJ3Z88uPtFatZa9D1A2hYpT-Xqgh8shEcHT4RtaY7idSWURNNRDHtVV0wzg__',
                      scale: 1.0),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            sectionFour()
          ],
        ),
      ),
    );
  }
}
