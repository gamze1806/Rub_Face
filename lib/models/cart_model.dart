import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int mask = 0;
  int maskPrice = 18;
  int spiral = 0;
  int spiralPrice = 23;
  int cat = 0;
  int catPrice = 9;
  int spider = 0;
  int spiderPrice = 25;

  void addProduct(int i) {
    if (i == 0) {
      cat++;
      notifyListeners();
    } else if (i == 1) {
      spider++;
      notifyListeners();
    } else if (i == 2) {
      mask++;
      notifyListeners();
    } else if (i == 3) {
      spiral++;
      notifyListeners();
    }
  }

  void removeProduct(int i) {
    if (i == 0) {
      if (cat > 0) {
        cat--;
        notifyListeners();
      }
    } else if (i == 1) {
      if (spider > 0) {
        spider--;
        notifyListeners();
      }
    } else if (i == 2) {
      if (mask > 0) {
        mask--;
        notifyListeners();
      }
    } else if (i == 3) {
      if (spiral > 0) {
        spiral--;
        notifyListeners();
      }
    }
  }

  void clearProduct(int i) {
    if (i == 0) {
      cat = 0;
      notifyListeners();
    } else if (i == 1) {
      spider = 0;
      notifyListeners();
    } else if (i == 2) {
      mask = 0;
      notifyListeners();
    } else if (i == 3) {
      spiral = 0;
      notifyListeners();
    }
  }

  int totalPrice() {
    int totalMaskPrice = maskPrice * mask;
    int totalSpiralPrice = spiralPrice * spiral;
    int totalCatPrice = catPrice * cat;
    int totalSpiderPrice = spiderPrice * spider;
    return totalMaskPrice + totalSpiralPrice + totalCatPrice + totalSpiderPrice;
  }

  int get totalItems => mask + spiral + cat + spider;
  int get totalPriceString => totalPrice();
}
