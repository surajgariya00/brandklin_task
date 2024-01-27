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
    title: 'Card 1 Title',
    description:
        'Description for Card 1. The Thar was first introduced in 2010 as a modernized version.',
  ),
  CardData(
    imagePath: 'assets/thar.png', // Replace with another image path
    title: 'Card 2 Title',
    description:
        'Description for Card 2. You can customize this text as needed.',
  ),
  // Add more dummy data as needed
];
