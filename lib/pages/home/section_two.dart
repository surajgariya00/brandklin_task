import 'package:flutter/material.dart';

Widget sectionTwo() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    height: 90,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://s3-alpha-sig.figma.com/img/0b2f/9afe/05625dfdaa43b7c71915d18ad0514a5f?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iacfX8-I00T5hfRNbsXjBFRBLBzDchv7VN5hhETfW~ePkbxrpCXEjV7Ddisy7YOUMo98FV0LoLjL57CMhPWkQ6~t9PW5BzlqkKDrdEdlXXjn7e3Q~SaSPp4fa1X7kNYfsK~KO~~2Rw2j0GIpO6bQ3ArS4KA~9PFnJMAWS~lh5vajNtrp-eJypSfy88q9g7J19RpVyGEFWMgoG1bbIwsgU1qEFtfGpermbY4iXiMAzH20ZefPlvJ8J83K1nHgypPoZHa3UtD~E~d8ZUU9ywTQi1w1PTqHK~39j7Hz-~4Lhu0Py9KLaZUTg6HjQXCr92Vdxkt5~3P-yQjcFISmH9nUFQ__",
        ),
        fit: BoxFit.cover,
        alignment: Alignment.centerRight,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'FUEL ',
                    style: TextStyle(
                      color: Color(0xFF828282),
                      fontSize: 20,
                      fontFamily: 'Armstrong',
                      fontWeight: FontWeight.w800,
                      height: 0,
                      letterSpacing: -0.60,
                    ),
                  ),
                  TextSpan(
                    text: 'PRICE',
                    style: TextStyle(
                      color: Color(0xFFAB373A),
                      fontSize: 20,
                      fontFamily: 'Armstrong',
                      fontWeight: FontWeight.w800,
                      height: 0,
                      letterSpacing: -0.60,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                _buildContainer('Choose City'),
                const SizedBox(width: 10),
                _buildContainer('Fuel Type'),
              ],
            )
          ],
        ),
        const SizedBox(width: 30),
        Row(
          children: [
            _buildCurrencyContainer(),
            _buildFuelImageContainer(),
          ],
        ),
      ],
    ),
  );
}

Widget _buildContainer(String text) {
  return Container(
    width: 104,
    height: 20,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(width: 1, color: const Color(0xFF737373)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF5F5F5F),
            fontSize: 11,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Color(0xFFAB373A),
        )
      ],
    ),
  );
}

Widget _buildCurrencyContainer() {
  return Container(
    width: 45,
    height: 56,
    decoration: BoxDecoration(color: const Color(0xFF828282)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'INR',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.22,
          ),
        ),
        Text(
          '100.5',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 11.50,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.23,
          ),
        ),
      ],
    ),
  );
}

Widget _buildFuelImageContainer() {
  return Container(
    width: 70,
    height: 85,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://s3-alpha-sig.figma.com/img/1f12/aaca/fc521036b5ed79ae131bb6f4f4bb4d10?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CDzBcow3ONLkC~DNvi-veJoSa~roDfsvQXnAmGv~yKPZ~CGhKTImeLKUnmyDjcEefCUaetnh8m~OuJndQIje35iP-S9rWqUZsKg0yDg6MGmJkMA8in7BjMICUYC-EFt-J8JQKTDDIfcnJYyDCk-h64AAcltPGuCVUTz~fC7zoEKdtM1DLqGoaGz3ghuqZYXeE-qqjzLfjZYeMEMzpl5dtebRiaLI-ANutU1xycyaDyfKF3lJUNfUfuTsMGfjOzrtdBDvoj0-GHwCh87paDhs-RU5zrWeCRMcUwJYCBFg6k31SOPHQrWvcIdZACZCMw8DCcjTmSP5BY4OF4yByx46tg__",
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
