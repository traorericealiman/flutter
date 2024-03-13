class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Plant(
      {required this.plantId,
      required this.price,
      required this.category,
      required this.plantName,
      required this.size,
      required this.rating,
      required this.humidity,
      required this.temperature,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  //List of Plants data
  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        price: 10000,
        category: 'Robe',
        plantName: 'Robe été',
        size: 'S L M',
        rating: 4.5,
        humidity: 34,
        temperature: '23 - 34',
        imageURL: 'assets/images/img_1.png',
        isFavorated: true,
        isSelected: false,
        decription:
            'Cette robe estivale est parfaite pour les journées ensoleillées. Fabriquée avec des matériaux de haute qualité, elle offre confort et style en même temps.'),
    Plant(
        plantId: 1,
        price: 11,
        category: 'Robe',
        plantName: 'Robe Shein',
        size: 'S L M',
        rating: 4.8,
        humidity: 56,
        temperature: '19 - 22',
        imageURL: 'assets/images/img_2.png',
        isFavorated: false,
        isSelected: false,
        decription:
            'La robe Shein est un choix élégant pour diverses occasions. Avec son design polyvalent, elle peut être portée lors de soirées ou au quotidien pour une touche de style.'),
    Plant(
        plantId: 2,
        price: 3000,
        category: 'Pantalon',
        plantName: 'Cargo',
        size: 'S L M',
        rating: 4.7,
        humidity: 34,
        temperature: '22 - 25',
        imageURL: 'assets/images/img_3.png',
        isFavorated: false,
        isSelected: false,
        decription:
            'Le pantalon Cargo est à la fois fonctionnel et tendance. Avec ses multiples poches et sa coupe confortable, il est idéal pour une journée d\'aventures en plein air.'),
    Plant(
        plantId: 3,
        price: 6000,
        category: 'Pantalon',
        plantName: 'Boy friend',
        size: 'S L M',
        rating: 4.5,
        humidity: 35,
        temperature: '23 - 28',
        imageURL: 'assets/images/img_4.png',
        isFavorated: false,
        isSelected: false,
        decription:
            'Le pantalon Boyfriend offre un style décontracté et chic. Sa coupe ample et sa texture douce en font un choix confortable pour toutes les occasions.'),
    Plant(
        plantId: 4,
        price: 5000,
        category: 'T-Shirt',
        plantName: 'Palm Angels',
        size: 'S L M',
        rating: 4.1,
        humidity: 66,
        temperature: '12 - 16',
        imageURL: 'assets/images/img_5.png',
        isFavorated: true,
        isSelected: false,
        decription:
            'Le t-shirt Palm Angels est un incontournable pour les amateurs de mode urbaine. Avec son design audacieux et son confort exceptionnel, il ajoute une touche de style à n\'importe quelle tenue.'),
    Plant(
        plantId: 5,
        price: 2500,
        category: 'T-Shirt',
        plantName: 'Off White',
        size: 'S L M',
        rating: 4.4,
        humidity: 36,
        temperature: '15 - 18',
        imageURL: 'assets/images/img_6.png',
        isFavorated: false,
        isSelected: false,
        decription:
            'Le t-shirt Off White est un symbole de style minimaliste et sophistiqué. Fabriqué avec des matériaux de haute qualité, il offre un confort optimal tout en restant tendance.'),
    Plant(
        plantId: 6,
        price: 8000,
        category: 'Pantalon',
        plantName: 'Jogging',
        size: 'S L M',
        rating: 4.2,
        humidity: 46,
        temperature: '23 - 26',
        imageURL: 'assets/images/img_7.png',
        isFavorated: false,
        isSelected: false,
        decription:
            'Le pantalon Jogging est parfait pour les journées décontractées. Avec sa coupe ajustée et ses matériaux doux, il offre un confort maximal tout en restant stylé.'),
    Plant(
        plantId: 7,
        price: 9000,
        category: 'Pull Over',
        plantName: 'Velone',
        size: 'S L M',
        rating: 4.5,
        humidity: 34,
        temperature: '21 - 24',
        imageURL: 'assets/images/img_8.png',
        isFavorated: false,
        isSelected: false,
        decription:
            'Le pull-over Velone est un choix élégant pour les journées fraîches. Avec sa texture douce et ses finitions impeccables, il ajoute une touche de sophistication à votre tenue.'),
    Plant(
        plantId: 8,
        price: 10000,
        category: 'Pull',
        plantName: 'Somewhere',
        size: 'S L M',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/img_9.png',
        isFavorated: false,
        isSelected: false,
        decription:
            'Le pull Somewhere est un essentiel de garde-robe pour les jours froids. Avec sa coupe confortable et sa chaleur incomparable, il vous gardera au chaud avec style.'),
  ];

  //Get the favorated items
  static List<Plant> getFavoritedPlants() {
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants() {
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}
