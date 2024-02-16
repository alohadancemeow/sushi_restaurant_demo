import 'package:flutter/material.dart';
import 'package:sushi_restaurant_demo/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: 'Salmon Sushi',
      price: '21.25',
      imagePath: 'lib/images/sushi2.png',
      rating: '4.9',
    ),
    Food(
      name: 'Tuna Sushi',
      price: '23.5',
      imagePath: 'lib/images/sushi3.png',
      rating: '3.9',
    ),
  ];

  // customer cart
  List<Food> _cart = [];

  // getter
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
      notifyListeners();
    }
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }

  // clear stock
  void clearCart() {
    _cart = [];
    notifyListeners();
  }
}
