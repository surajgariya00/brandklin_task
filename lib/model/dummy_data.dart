class DummyCarData {
  final String price;
  final String onwards;
  final String exShowroomPrice;
  final double rating;
  final String modelName;
  final String modelType;
  final String seatingCapacity;
  final String fuelType;
  final String safetyRating;
  final String transmissionType;

  DummyCarData({
    required this.price,
    required this.onwards,
    required this.exShowroomPrice,
    required this.rating,
    required this.modelName,
    required this.modelType,
    required this.seatingCapacity,
    required this.fuelType,
    required this.safetyRating,
    required this.transmissionType,
  });
}

final List<DummyCarData> dummyCarDataList = [
  DummyCarData(
    price: '₹ 1.04 Lakhs',
    onwards: 'onwards',
    exShowroomPrice: 'Ex Showroom Price',
    rating: 4.5,
    modelName: 'Mercedes-Benz',
    modelType: 'E-Class Cabriolet',
    seatingCapacity: '5,7,9',
    fuelType: 'Petrol',
    safetyRating: 'NCAP NA*',
    transmissionType: 'Manual AMT',
  ),
  DummyCarData(
    price: '₹ 1.20 Lakhs',
    onwards: 'onwards',
    exShowroomPrice: 'Ex Showroom Price',
    rating: 4.2,
    modelName: 'Audi',
    modelType: 'A4 Sedan',
    seatingCapacity: '5',
    fuelType: 'Diesel',
    safetyRating: 'NCAP 5*',
    transmissionType: 'Automatic',
  ),
  DummyCarData(
    price: '₹ 1.15 Lakhs',
    onwards: 'onwards',
    exShowroomPrice: 'Ex Showroom Price',
    rating: 4.8,
    modelName: 'BMW',
    modelType: 'X5 SUV',
    seatingCapacity: '7',
    fuelType: 'Hybrid',
    safetyRating: 'NCAP 4*',
    transmissionType: 'Automatic',
  ),
  DummyCarData(
    price: '₹ 1.30 Lakhs',
    onwards: 'onwards',
    exShowroomPrice: 'Ex Showroom Price',
    rating: 4.7,
    modelName: 'Lamborghini',
    modelType: 'Huracan',
    seatingCapacity: '2',
    fuelType: 'Petrol',
    safetyRating: 'NCAP NA*',
    transmissionType: 'Automatic',
  ),
];
