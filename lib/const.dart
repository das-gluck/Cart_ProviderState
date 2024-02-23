import 'package:flutter/material.dart';

class Products {

  final int id;
  final String name;
  final Color color;
  final double price;

  Products({
    required this.id,
    required this.name,
    required this.color,
    required this.price
});

}

final List<Products> PRODUCTS = [
  Products(id: 0, name: 'Laptop', color: Colors.amber, price: 999.9),
  Products(id: 1, name: 'Table', color: Colors.green, price: 276.54),
  Products(id: 2, name: "chair", color: Colors.brown, price: 700.9),
  Products(id: 3, name: 'charger', color: Colors.indigo, price: 2000),
  Products(id: 4, name: 'smartphone', color: Colors.purple, price: 259.9),
  Products(id: 5, name: 'smartwatch', color: Colors.grey, price: 459.9),
  Products(id: 6, name: 'computer', color: Colors.pink, price: 699.9),
];