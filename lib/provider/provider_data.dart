import 'package:flutter/cupertino.dart';
import 'package:shop_app/model/product_model.dart';

class ProductsData with ChangeNotifier {
  List<ProductModel> _items = [
    ProductModel(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    ProductModel(
      id: 'p2',
      title: 'blue Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    ProductModel(
      id: 'p3',
      title: 'black Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    ProductModel(
      id: 'p4',
      title: 'yellow Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
  ];

  var showFavorite = false;

  List<ProductModel> get items {
    if (showFavorite) {
      return _items.where((element) => element.favorite).toList();
    }
    return [..._items];
  }

  void showFavoriteOnly() {
    showFavorite = true;
  }

  void showAll() {
    showFavorite = false;
  }

  void addProducts() {
    notifyListeners();
  }
}
