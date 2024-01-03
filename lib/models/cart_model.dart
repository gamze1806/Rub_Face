import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int nudelsuppe = 0;
  int nudelPrice = 17;
  int festival = 0;
  int festivalPrice = 39;

  void addNudelSuppe() {
    nudelsuppe++;
    notifyListeners();
  }

  void removeNudelSuppe() {
    if (nudelsuppe > 0) {
      nudelsuppe--;
      notifyListeners();
    }
  }

  void clearNudelSuppe() {
    nudelsuppe = 0;
    notifyListeners();
  }

  void addFestival() {
    festival++;
    notifyListeners();
  }

  void removeFestival() {
    if (festival > 0) {
      festival--;
      notifyListeners();
    }
  }

  void clearFestival() {
    festival = 0;
    notifyListeners();
  }

  void addProduct(name) {
    if (name == "Mask of fire") {
      addNudelSuppe();
    } else if (name == "Art of spirals") {
      addFestival();
    }
  }

  int totalPrice() {
    int totalNudelPrice = nudelPrice * nudelsuppe;
    int totalFestivalPrice = festivalPrice * festival;
    return totalNudelPrice + totalFestivalPrice;
  }

  int get totalItems => nudelsuppe + festival;
  int get totalPriceString => totalPrice();
}
