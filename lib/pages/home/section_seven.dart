import 'package:flutter/material.dart';

Widget sectionSeven(BuildContext context) {
  return Container(
    height: 160,
    width: MediaQuery.of(context).size.width * 1,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://s3-alpha-sig.figma.com/img/1ffd/ca79/cb417c348ce350dbe0c1580bb41922b9?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Qq8ruR8RAe5X-CMNa6k0ZD9077tPO-nSYUwRcdSuXxbmjzoiSRHlD8h9vZIaYyEYAG17j-5iyE-kJgmNJ0PCKq0melnDnzryfa8esQwgmBpv77BQZMeyM2sYYRwJ3rQh49FzzgV2EsgeH9ADVI3Y8Sr-3y0PUXncEbhBgDcMM3~UAqdNbjaUwkJ5WIFG8iFTLjmjAcdYlwPLBILiIdM-8~3FM-V9uQeJgeIj7jY06qFPQ9UWrO-CnpkFpOG0YMHJKcvUuXxoUsJkptRrpHsO0etIgJT6v3HmxEUsHlfYuAllELOkDr2lWqpL4Ltzvmp0uw6nyPBhjyubgNcrJMp4Dw__'),
        fit: BoxFit.fitWidth,
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black,
          Color.fromARGB(255, 217, 81, 81),
        ],
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
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
                    width: 20,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/Youtube.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
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
                  SizedBox(width: MediaQuery.of(context).size.width * 0.2),
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
    ),
  );
}
