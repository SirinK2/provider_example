import 'package:flutter/material.dart';
import 'item.dart';

class Cart with ChangeNotifier{

  List<Item> _item = [];
  double _price = 0.0;

  addItem(Item item){
    _item.add(item);
    _price += item.price;
    notifyListeners();
  }

    removeItem(Item item){
        _item.remove(item);
        _price -= item.price;
        notifyListeners();
      }

  int get count => _item.length;

  double get totalPrice => _price;

  List<Item> get cartItems => _item;





}