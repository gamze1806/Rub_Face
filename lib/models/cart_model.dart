import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int mask = 1;
  int maskPrice = 18;
  int spiral = 1;
  int spiralPrice = 23;
  int cat = 1;
  int catPrice = 9;

  void addProduct(int i) {
    if (i == 0) {
      mask++;
      notifyListeners();
    } else if (i == 1) {
      spiral++;
      notifyListeners();
    } else if (i == 2) {
      cat++;
      notifyListeners();
    }
  }

  void removeProduct(int i) {
    if (i == 0) {
      if (mask > 1) {
        mask--;
        notifyListeners();
      }
    }
    if (i == 1) {
      if (spiral > 1) {
        spiral--;
        notifyListeners();
      }
    }
    if (i == 2) {
      if (cat > 1) {
        cat--;
        notifyListeners();
      }
    }
  }

  void clearProduct(int i) {
    if (i == 0) {
      mask = 0;
      notifyListeners();
    }
    if (i == 1) {
      spiral = 0;
      notifyListeners();
    }
    if (i == 2) {
      cat = 0;
      notifyListeners();
    }
  }

  int totalPrice() {
    int totalMaskPrice = maskPrice * mask;
    int totalSpiralPrice = spiralPrice * spiral;
    int totalCatPrice = catPrice * cat;
    return totalMaskPrice + totalSpiralPrice + totalCatPrice;
  }

  int get totalItems => mask + spiral + cat;
  int get totalPriceString => totalPrice();
}
