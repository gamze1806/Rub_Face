import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rub_face/components/button.dart';
import 'package:rub_face/components/event_tile.dart';
import 'package:rub_face/models/cart_model.dart';
import 'package:rub_face/models/dark_mode_provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    DarkModeProvider darkModeProvider = Provider.of<DarkModeProvider>(context);
    bool _isDarkMode = darkModeProvider.isDarkMode;
    CartModel cartModel = Provider.of<CartModel>(context);
    List EventList = [
      EventTile(
        name: "The queen of cats",
        imagePath: "lib/images/C1.png",
        price: "€ ${cartModel.catPrice}",
        rating: "4",
        details: () => Navigator.pushNamed(context, '/catPage'),
        colorMode: _isDarkMode
            ? Color.fromARGB(255, 0, 5, 14).withOpacity(1)
            : Colors.white,
        colorText: _isDarkMode ? Colors.white : Color.fromARGB(255, 33, 56, 93),
      ),
      EventTile(
        name: "Spiders magic",
        imagePath: "lib/images/SP1.png",
        price: "€ ${cartModel.spiderPrice}",
        rating: "4,5",
        details: () => Navigator.pushNamed(context, '/spiderPage'),
        colorMode: _isDarkMode
            ? Color.fromARGB(255, 0, 5, 14).withOpacity(1)
            : Colors.white,
        colorText: _isDarkMode ? Colors.white : Color.fromARGB(255, 33, 56, 93),
      ),
      EventTile(
        name: "Mask of fire",
        imagePath: "lib/images/RM1.png",
        price: "€ ${cartModel.maskPrice}",
        rating: "5",
        details: () => Navigator.pushNamed(context, '/maskPage'),
        colorMode: _isDarkMode
            ? Color.fromARGB(255, 0, 5, 14).withOpacity(1)
            : Colors.white,
        colorText: _isDarkMode ? Colors.white : Color.fromARGB(255, 33, 56, 93),
      ),
      EventTile(
        name: "Art of spirals",
        imagePath: "lib/images/S1.png",
        price: "€ ${cartModel.spiralPrice}",
        rating: "4,7",
        details: () => Navigator.pushNamed(context, '/spiralPage'),
        colorMode: _isDarkMode
            ? Color.fromARGB(255, 0, 5, 14).withOpacity(1)
            : Colors.white,
        colorText: _isDarkMode ? Colors.white : Color.fromARGB(255, 33, 56, 93),
      )
    ];

    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor:
            _isDarkMode ? Colors.black : Color.fromARGB(255, 234, 236, 240),
        appBar: AppBar(
          title: Text("M A K E R S P A C E"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(210, 186, 197, 214),
          elevation: 4,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {
                darkModeProvider.toggleDarkMode();
              },
              icon:
                  _isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () => Navigator.pushNamed(context, '/cartPage'),
              ),
            )
          ],
          toolbarHeight: 40,
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Transform.rotate(
              angle: 45 * (pi / 1.5),
              child: Image.asset(
                "lib/images/BG2.png",
                fit: BoxFit.cover,
              ),
            ),
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: _isDarkMode
                    ? Color.fromARGB(255, 2, 15, 37).withOpacity(0.85)
                    : Color.fromARGB(255, 33, 56, 93).withOpacity(0.85),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: _isDarkMode
                          ? Color.fromARGB(255, 0, 5, 14).withOpacity(1)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color.fromARGB(121, 255, 255, 255),
                        width: 2.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(142, 255, 255, 255),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "32% Nachlass",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: _isDarkMode
                                    ? Colors.white
                                    : Color.fromARGB(255, 33, 56, 93),
                              ),
                            ),
                            SizedBox(height: 15),
                            MyButton(
                              myText: "Buchen",
                              event: () {},
                            )
                          ],
                        ),
                        Image.asset(
                          "lib/images/SP1.png",
                          height: 135,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "Suche Produkt",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 13),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Produkte",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => EventList[index],
                      itemCount: EventList.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Makerspace: Nice To Work!",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/customPage');
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: _isDarkMode
                            ? Color.fromARGB(255, 0, 5, 14).withOpacity(1)
                            : Color.fromARGB(210, 186, 197, 214),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromARGB(121, 255, 255, 255),
                          width: 1.0,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(142, 255, 255, 255),
                            blurRadius: 5.0,
                            spreadRadius: 2.0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "lib/images/M2.png",
                            height: 115,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Etwas Ruhe gewünscht?",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Chillout Room",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
