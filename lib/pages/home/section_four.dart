import 'package:flutter/material.dart';

Widget sectionFour() {
  return Container(
    height: 232,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
            "https://s3-alpha-sig.figma.com/img/0b2f/9afe/05625dfdaa43b7c71915d18ad0514a5f?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iacfX8-I00T5hfRNbsXjBFRBLBzDchv7VN5hhETfW~ePkbxrpCXEjV7Ddisy7YOUMo98FV0LoLjL57CMhPWkQ6~t9PW5BzlqkKDrdEdlXXjn7e3Q~SaSPp4fa1X7kNYfsK~KO~~2Rw2j0GIpO6bQ3ArS4KA~9PFnJMAWS~lh5vajNtrp-eJypSfy88q9g7J19RpVyGEFWMgoG1bbIwsgU1qEFtfGpermbY4iXiMAzH20ZefPlvJ8J83K1nHgypPoZHa3UtD~E~d8ZUU9ywTQi1w1PTqHK~39j7Hz-~4Lhu0Py9KLaZUTg6HjQXCr92Vdxkt5~3P-yQjcFISmH9nUFQ__",
          ),
          fit: BoxFit.fill,
          alignment: Alignment.bottomCenter),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'BROWSE BY ',
                    style: TextStyle(
                      color: Color(0xFF828282),
                      fontSize: 23,
                      fontFamily: 'Armstrong',
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.40,
                    ),
                  ),
                  TextSpan(
                    text: 'BRANDS',
                    style: TextStyle(
                      color: Color(0xFFAB373A),
                      fontSize: 23,
                      fontFamily: 'Armstrong',
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBrandColumn('BMW', 'assets/bmw.png', 40, 40),
                _buildBrandColumn('Ford', 'assets/ford.png', 30, 70),
                _buildBrandColumn('Honda', 'assets/honda.png', 40, 50),
                _buildBrandColumn('Audi', 'assets/audi.png', 30, 70),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildBrandColumn('Mercedes', 'assets/mer.png', 40, 55),
              _buildBrandColumn('Volkswagen', 'assets/volks.png', 45, 45),
              _buildBrandColumn('Skoda', 'assets/sakoda.png', 50, 50),
              _buildBrandColumn('Nissan', 'assets/nissan.png', 50, 50),
            ],
          ),
        ],
      ),
    ),
    // Your other content goes here
  );
}

Column _buildBrandColumn(
    String brandName, String imagePath, double imageHeight, double imageWidth) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        height: imageHeight,
        width: imageWidth,
        fit: BoxFit.fill,
      ),
      const SizedBox(height: 15),
      Text(
        brandName,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
