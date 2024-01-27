class CardData {
  final String imagePath;
  final String title;
  final String description;

  CardData(
      {required this.imagePath,
      required this.title,
      required this.description});
}

final List<CardData> dummyCardDataList = [
  CardData(
    imagePath: 'assets/thar.png',
    title: 'Thar is back',
    description:
        'The Thar was first introduced in 2010 \nas a modernized version ',
  ),
  CardData(
    imagePath: 'assets/aa.png',
    title: 'Audi Luxury',
    description:
        'The Audi was first introduced in 2020 \nas a modernized version ',
  ),
  CardData(
    imagePath: 'assets/thar.png',
    title: 'Thar is back',
    description:
        'The Thar was first introduced in 2010 \nas a modernized version ',
  ),
];
