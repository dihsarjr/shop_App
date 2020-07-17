import 'package:flutter/cupertino.dart';
import 'package:shop_app/model/product_model.dart';

class ProductsData with ChangeNotifier{
  List<ProductModel>_items = [];
  List<ProductModel> get items{
    return [..._items];
  }
  void addProducts(){
    notifyListeners();
  }
}