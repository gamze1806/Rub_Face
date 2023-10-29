import 'package:flutter/material.dart';
import 'package:rub_face/components/button.dart';
import 'package:rub_face/components/event_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    List EventList = [
      EventTile(
        name: "Mitama Matsuri Festival",
        imagePath: "lib/images/japan7.png",
        price: "€ 49",
        rating: "5",
        details: () => Navigator.pushNamed(context, '/robotsPage'),
      ),
      EventTile(
        name: "Nudel Harmony Japan",
        imagePath: "lib/images/japan3.png",
        price: "€ 18",
        rating: "4",
        details: () {},
      ),
      EventTile(
        name: "Mount Fuji Tour",
        imagePath: "lib/images/japan6.png",
        price: "€ 39",
        rating: "4,3",
        details: () {},
      )
    ];

    return Scaffold(
      backgroundColor:
          _isDarkMode ? Colors.black : Color.fromARGB(255, 33, 56, 93),
      appBar: AppBar(
        title: Text("J A P A N"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 186, 197, 214),
        elevation: 4,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
            icon: _isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.shopping_cart),
          )
        ],
        toolbarHeight: 40,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
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
                          color: Color.fromARGB(255, 33, 56, 93),
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
                    "lib/images/japan1.png",
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
                  hintText: "Suche Event",
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
                "Events",
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
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Derzeit beliebt",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 148, 173, 64),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "lib/images/japan2.png",
                    height: 115,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kimono Kultur",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "€ 45",
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
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
