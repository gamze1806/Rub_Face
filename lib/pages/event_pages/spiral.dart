import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rub_face/components/button.dart';
import 'package:rub_face/models/cart_model.dart';
import 'package:rub_face/models/dark_mode_provider.dart';

class ArtOfSpirals extends StatelessWidget {
  const ArtOfSpirals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DarkModeProvider darkModeProvider = Provider.of<DarkModeProvider>(context);
    bool _isDarkMode = darkModeProvider.isDarkMode;

    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        appBar: AppBar(
          title: Text("M A K E R S P A C E"),
          centerTitle: true,
          backgroundColor: _isDarkMode
              ? Color.fromARGB(123, 33, 56, 93)
              : Color.fromARGB(85, 33, 56, 93),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                darkModeProvider.toggleDarkMode();
              },
              icon: Icon(Icons.dark_mode),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () => Navigator.pushNamed(context, '/cartPage'),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Transform.rotate(
                angle: 45 * (pi / 1.5),
                child: Image.asset(
                  "lib/images/BG2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  color: _isDarkMode
                      ? Color.fromARGB(255, 2, 15, 37).withOpacity(0.85)
                      : Color.fromARGB(255, 33, 56, 93).withOpacity(0.85),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      height: 245,
                      child: PageView(
                        children: [
                          Image.asset('lib/images/S1.png'),
                          Image.asset('lib/images/S2.png'),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 30,
                          ),
                          Text(
                            "4,7",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        "Art of spirals",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        "Das erwartet Sie",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        "Für die Wohnung als Deko oder im Büro als Basketballkorb, unsere "
                        '"Spiral Vase"'
                        " zeigt ihre Einzigartige Vielfalt überall.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            color: _isDarkMode
                                ? Color.fromARGB(255, 11, 27, 52)
                                : Color.fromARGB(255, 33, 56, 93),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "€${cartModel.spiralPrice}",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: IconButton(
                                          onPressed: () =>
                                              cartModel.removeProduct(3),
                                          icon: Icon(Icons.remove),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        cartModel.spiral.toString(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: IconButton(
                                          onPressed: () =>
                                              cartModel.addProduct(3),
                                          icon: Icon(Icons.add),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 30),
                              MyButton(
                                myText: "Zum Einkaufswagen",
                                event: () =>
                                    Navigator.pushNamed(context, '/cartPage'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
