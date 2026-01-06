import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  final Map<String, int> _items = {};

  Map<String, int> get items => _items;

  void add(String id) {
    _items[id] = (_items[id] ?? 0) + 1;
    notifyListeners();
  }
}
