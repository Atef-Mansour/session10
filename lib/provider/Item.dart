import 'package:flutter/material.dart';


class Item with ChangeNotifier {
  final String id, title, imageUrl;
  final double price;
  final List<String> categories;

  bool isFav;

  Item(
      {required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.price,
      this.isFav = false});
}

class Itemss with ChangeNotifier {
  // List<Item> get dummyItems => [..._dummyItems];

  // List<Item> getItems() => [..._dummyItems];

  List<Item> get getItems => [..._dummyItems];

  List<Item> get getFav => [..._favoriteItems];

  void addFavItem(String id) {
    _favoriteItems.add(_dummyItems.firstWhere((element) => element.id == id));
    notifyListeners();
  }

  void removeFavItem(String id) {
    _favoriteItems.removeWhere((element) => element.id == id);
    notifyListeners();
  }



  final List<Item> _favoriteItems = [];

  final List<Item> _dummyItems = [
    Item(
      id: 'm1',
      categories: [
        'c1',
        'c3',
      ],
      price: 120.00,
      title: 'فستان بناتي ',
      imageUrl:
          'https://www.pics-place.com/wp-content/uploads/2020/04/%D8%B1%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%84%D9%83%D9%81%D9%84%D8%A9-%D8%A3%D9%86%D9%8A%D9%82%D8%A9.jpg',
    ),
    Item(
      id: 'm2',
      categories: [
        'c3',
        'c2',
      ],
      price: 150.50,
      title: 'فستان بناتي ',
      imageUrl:
      'https://i.pinimg.com/474x/d2/55/af/d255afac680e063beb32f0d8ad57c36f.jpg',
    ),
    Item(
      id: 'm3',
      categories: [
        'c4',
        'c5',
      ],
      price: 230.50,
      title: 'فستان بناتي ',
      imageUrl:
      'https://www.pics-place.com/wp-content/uploads/2020/04/%D8%B1%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%84%D9%83%D9%81%D9%84%D8%A9-%D8%A3%D9%86%D9%8A%D9%82%D8%A9.jpg',
    ),
    Item(
      id: 'm4',
      categories: [
        'c5',
        'c6',
      ],
      price: 670.50,
      title: 'فستان بناتي ',
      imageUrl:
      'https://www.pics-place.com/wp-content/uploads/2020/04/%D8%B1%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%84%D9%83%D9%81%D9%84%D8%A9-%D8%A3%D9%86%D9%8A%D9%82%D8%A9.jpg',
    ),
    Item(
      id: 'm5',
      categories: [
        'c1',
        'c6',
      ],
      price: 390.50,
      title: 'فستان بناتي ',
      imageUrl:
      'https://www.pics-place.com/wp-content/uploads/2020/04/%D8%B1%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%84%D9%83%D9%81%D9%84%D8%A9-%D8%A3%D9%86%D9%8A%D9%82%D8%A9.jpg',
    ),
    Item(
      id: 'm6',
      categories: [
        'c5',
        'c2',
      ],
      price: 87.50,
      title: 'فستان بناتي ',
      imageUrl:
      'https://www.pics-place.com/wp-content/uploads/2020/04/%D8%B1%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%84%D9%83%D9%81%D9%84%D8%A9-%D8%A3%D9%86%D9%8A%D9%82%D8%A9.jpg',
    ),
    Item(
      id: 'm7',
      categories: [
        'c3',
        'c2',
      ],
      price: 87.50,
      title: 'فستان بناتي ',
      imageUrl:
      'https://www.pics-place.com/wp-content/uploads/2020/04/%D8%B1%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%84%D9%83%D9%81%D9%84%D8%A9-%D8%A3%D9%86%D9%8A%D9%82%D8%A9.jpg',
    ),
    Item(
      id: 'm8',
      categories: [
        'c1',
        'c3',
        'c2',
        'c5',
      ],
      price: 120.00,
      title: 'فستان بناتي ',
      imageUrl:
      'https://www.pics-place.com/wp-content/uploads/2020/04/%D8%B1%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%84%D9%83%D9%81%D9%84%D8%A9-%D8%A3%D9%86%D9%8A%D9%82%D8%A9.jpg',
    ),
    Item(
      id: 'm9',
      categories: [
        'c3',
        'c2',
        'c7',
        'c9',
      ],
      price: 150.50,
      title: 'فستان بناتي ',
      imageUrl:
      'https://i.pinimg.com/474x/d2/55/af/d255afac680e063beb32f0d8ad57c36f.jpg',
    ),
    Item(
      id: 'm10',
      categories: [
        'c1',
        'c3',
        'c8',
        'c9',
      ],
      price: 120.00,
      title: 'فستان بناتي ',
      imageUrl:
      'https://www.pics-place.com/wp-content/uploads/2020/04/%D8%B1%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%84%D9%83%D9%81%D9%84%D8%A9-%D8%A3%D9%86%D9%8A%D9%82%D8%A9.jpg',
    ),
    Item(
      id: 'm11',
      categories: [
        'c3',
        'c2',
        'c7',
        'c8',
      ],
      price: 150.50,
      title: 'فستان بناتي ',
      imageUrl:
      'https://i.pinimg.com/474x/d2/55/af/d255afac680e063beb32f0d8ad57c36f.jpg',
    ),
    Item(
      id: 'm12',
      categories: [
        'c1',
        'c3',
        'c4',
        'c5'
      ],
      price: 120.00,
      title: 'فستان بناتي ',
      imageUrl:
      'https://www.pics-place.com/wp-content/uploads/2020/04/%D8%B1%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%84%D9%83%D9%81%D9%84%D8%A9-%D8%A3%D9%86%D9%8A%D9%82%D8%A9.jpg',
    ),
    Item(
      id: 'm13',
      categories: [
        'c3',
        'c87',
        'c6',
        'c5'
      ],
      price: 150.50,
      title: 'فستان بناتي ',
      imageUrl:
      'https://i.pinimg.com/474x/d2/55/af/d255afac680e063beb32f0d8ad57c36f.jpg',
    ),
    Item(
      id: 'm14',
      categories: [
        'c8',
        'c9',
        'c6',
        'c5',
      ],
      price: 120.00,
      title: 'فستان بناتي ',
      imageUrl:
      'https://www.pics-place.com/wp-content/uploads/2020/04/%D8%B1%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%84%D9%83%D9%81%D9%84%D8%A9-%D8%A3%D9%86%D9%8A%D9%82%D8%A9.jpg',
    ),
    Item(
      id: 'm15',
      categories: [
        'c9',
        'c10',
        'c6',
        'c5',
      ],
      price: 150.50,
      title: 'فستان بناتي ',
      imageUrl:
      'https://i.pinimg.com/474x/d2/55/af/d255afac680e063beb32f0d8ad57c36f.jpg',
    ),
  ];
}
