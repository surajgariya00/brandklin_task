import 'dart:js';

import 'package:flutter/material.dart';

Widget sectionSeven() {
  return Container(
    height: 160,
    width: MediaQuery.of(context as BuildContext).size.width * 1,
    decoration: BoxDecoration(
      image: const DecorationImage(
        image: NetworkImage(
            'https://s3-alpha-sig.figma.com/img/1ffd/ca79/cb417c348ce350dbe0c1580bb41922b9?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Qq8ruR8RAe5X-CMNa6k0ZD9077tPO-nSYUwRcdSuXxbmjzoiSRHlD8h9vZIaYyEYAG17j-5iyE-kJgmNJ0PCKq0melnDnzryfa8esQwgmBpv77BQZMeyM2sYYRwJ3rQh49FzzgV2EsgeH9ADVI3Y8Sr-3y0PUXncEbhBgDcMM3~UAqdNbjaUwkJ5WIFG8iFTLjmjAcdYlwPLBILiIdM-8~3FM-V9uQeJgeIj7jY06qFPQ9UWrO-CnpkFpOG0YMHJKcvUuXxoUsJkptRrpHsO0etIgJT6v3HmxEUsHlfYuAllELOkDr2lWqpL4Ltzvmp0uw6nyPBhjyubgNcrJMp4Dw__'), // Replace with your image asset
        fit: BoxFit.fitWidth,
      ),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          Colors.black.withOpacity(0.7),
        ],
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
            child: Text(
          'YouTube Creative',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Armstrong',
            fontWeight: FontWeight.w800,
            height: 0,
            letterSpacing: -0.16,
          ),
        )),
        const SizedBox(
          height: 5,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 40, // Adjust the width to make the image larger
                  height: 40, // Adjust the height to make the image larger
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/Youtube.png'), // Replace with your image asset
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                    width: 8), // Adjust the spacing between the image and Text
                const Text(
                  'About Us Video',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context as BuildContext).size.width *
                        0.2),
                Image.asset(
                  'assets/hotlogo.png',
                  fit: BoxFit.fill,
                  width: 60,
                )
              ],
            ),
            Image.asset(
              'assets/slide.png',
              width: 40,
            )
          ],
        )
      ],
    ),
  );
}
