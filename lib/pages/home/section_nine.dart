import 'package:flutter/material.dart';

Widget sectionNine() {
  final List<String> imageUrls = [
    "https://s3-alpha-sig.figma.com/img/7b99/d4e6/0d15f67c38aba59edf3d811752b07184?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BMwtX2~1tuMpSaZZxZCeNxu0MkIEA1taOJL5TsKf8zS1nWl6JNHrtMVaodUR4Z1Lju-suZtUbCRglVgcY5GyhEFBubYG8~iQeF4XVlzAKVQwFRRDJOn5ssdEEvejuaqVKpzOxtsfb6BujdpQP7Ixv~LURy~ag-m9qEc-2KsvlRb25YM0FaEEM2G0SVwto47k4Oy~cLuWf-c0dknT3PYfxiOq7~VIIovkOQDXk7EN5CzhmsabXIlbhNjszaBTPxpFWtaRJ-APU9eswkWZZEJFaE9z0SHOtX3ahLDa3XuUp~sntQkek~oxXwESR3M4mbEuFNTObspEkl4xQq-pUAluog__",
    "https://s3-alpha-sig.figma.com/img/d1d1/6b4e/884f614643374b1a7e5e59f2981dad1b?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QaTMZQV4g5PMQcnbPBLCxneRuVv8jXWYrW-x8tTOwe7krJRSPwHXa0cWn8Ks545wE~abDNq4RXVBQJN9q8K0HEqd0W8G7SJaTpPor0YFSzOfQ6ikGNL1g0C4m54Qy8jXIaKng1PpGGXE-dDYzDWXaZsHurwkO0zcGtS0tmm2m4sbKiFip1ek3kZd3wWoYrOJ1lJU-yKiG~n5aLpG49a2E4n95IFaDhwwjQoCsBJaAKmxJzOoHNu8YNs-vBUcpE4FO9D7x9jVi1DixAmN1TF4ZlMpS-oY-muhCvFbaGBKj33Sa0dmfsHZZaUsc0qc3zX9Dhf3V0HzEO~NXcPBMpLc4w__",
  ];

  return Container(
    width: 420,
    height: 300,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://s3-alpha-sig.figma.com/img/0b2f/9afe/05625dfdaa43b7c71915d18ad0514a5f?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iacfX8-I00T5hfRNbsXjBFRBLBzDchv7VN5hhETfW~ePkbxrpCXEjV7Ddisy7YOUMo98FV0LoLjL57CMhPWkQ6~t9PW5BzlqkKDrdEdlXXjn7e3Q~SaSPp4fa1X7kNYfsK~KO~~2Rw2j0GIpO6bQ3ArS4KA~9PFnJMAWS~lh5vajNtrp-eJypSfy88q9g7J19RpVyGEFWMgoG1bbIwsgU1qEFtfGpermbY4iXiMAzH20ZefPlvJ8J83K1nHgypPoZHa3UtD~E~d8ZUU9ywTQi1w1PTqHK~39j7Hz-~4Lhu0Py9KLaZUTg6HjQXCr92Vdxkt5~3P-yQjcFISmH9nUFQ__",
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      children: [
        Container(
          width: 132,
          height: 21,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'NEWS ',
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
                      text: 'UPDATE',
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
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(imageUrls.length, (index) {
              return Row(
                children: [
                  Container(
                    width: 470,
                    height: 200,
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ],
    ),
  );
}
