import 'package:flutter/material.dart';

import '../const.dart';

class CartProvider extends ChangeNotifier {
  final List<Products> _items = [];

  List<Products> get items => _items ;

  void add(Products item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Products item){
    _items.remove(item);
    notifyListeners();
  }

  void removeAll(){
    _items.clear();
    notifyListeners();
  }

  double getCartTotal(){
    return _items.fold(0, (previousValue, item) => previousValue + item.price);
  }

}