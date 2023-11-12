import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int nudelsuppe = 0;
  int festival = 0;

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

  int get totalItems => nudelsuppe + festival;
}
