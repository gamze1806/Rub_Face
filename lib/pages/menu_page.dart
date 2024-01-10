/*import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rub_face/components/button.dart';
import 'package:rub_face/components/event_tile.dart';
import 'package:rub_face/models/cart_model.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    CartModel cartModel = Provider.of<CartModel>(context);
    List<EventTile> eventList = [
      EventTile(
        name: "Mask of fire",
        imagePath: "lib/images/RM1.png",
        price: "€ ${cartModel.festivalPrice}",
        rating: "5",
        details: () => Navigator.pushNamed(context, '/robotsPage'),
      ),
      EventTile(
        name: "Art of spirals",
        imagePath: "lib/images/S1.png",
        price: "€ ${cartModel.nudelPrice}",
        rating: "4",
        details: () => Navigator.pushNamed(context, '/noodleHarmonyPage'),
      ),
      EventTile(
        name: "Mount Fuji Tour",
        imagePath: "lib/images/japan6.png",
        price: "€ 39",
        rating: "4,3",
        details: () {},
      )
    ];

    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor:
            _isDarkMode ? Colors.black : Color.fromARGB(255, 33, 56, 93),
        appBar: AppBar(
          title: Text("M A K E R S P A C E"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(210, 186, 197, 214),
          elevation: 4,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isDarkMode = !_isDarkMode;
                });
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
        body: SingleChildScrollView(
          child: Padding(
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
                        "lib/images/M3.png",
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
                    itemBuilder: (context, index) => eventList[index],
                    itemCount: eventList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                // ... rest of your code

                SizedBox(height: 25),
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
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rub_face/components/button.dart';
import 'package:rub_face/components/event_page.dart';
import 'package:rub_face/components/event_tile.dart';
import 'package:rub_face/models/cart_model.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    CartModel cartModel =
        Provider.of<CartModel>(context); // Zugriff auf CartModel
    List EventList = [
      EventTile(
        name: "Mask of fire",
        imagePath: "lib/images/RM1.png",
        price: "€${cartModel.festivalPrice}",
        rating: "5",
        details: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EventPage(
                eventName: "Mask of fire",
                imagePath: "lib/images/RM1.png",
                description:
                    "Egal ob für einen Maskenball oder Karnevall, unsere "
                    '"Mask of fire"'
                    " repräsentiert dich überall perfekt für den Anlass.",
                price: "€ ${cartModel.festivalPrice}",
                rating: '10',
                //addProduct: cartModel.addNudelSuppe,
                removeProduct: cartModel.removeNudelSuppe,
              ),
            ),
          );
        },
        //onAddToCart: () => cartModel.addNudelSuppe(),
      ),
      EventTile(
        name: "Art of spirals",
        imagePath: "lib/images/S1.png",
        price: "€17",
        rating: "5",
        details: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EventPage(
                eventName: "Mask of fire",
                imagePath: "lib/images/S1.png",
                description:
                    "Egal ob für einen Maskenball oder Karnevall, unsere "
                    '"Mask of fire"'
                    " repräsentiert dich überall perfekt für den Anlass.",
                price: "€ ${cartModel.nudelPrice}",
                rating: '10',
                //addProduct: cartModel.addFestival,
                removeProduct: cartModel.removeFestival,
              ),
            ),
          );
        },
      ),
      EventTile(
        name: "The queen of cat's",
        imagePath: "lib/images/RM1.png",
        price: "49",
        rating: "5",
        details: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EventPage(
                eventName: "The queen of cat's",
                imagePath: "lib/images/RM1.png",
                description:
                    "Egal ob für einen Maskenball oder Karnevall, unsere "
                    '"Mask of fire"'
                    " repräsentiert dich überall perfekt für den Anlass.",
                price: "€ ${cartModel.festivalPrice}",
                rating: '10',
                //addProduct: cartModel.addNudelSuppe,
                removeProduct: cartModel.removeNudelSuppe,
              ),
            ),
          );
        },
      ),
      EventTile(
        name: "Mount Fuji Tour",
        imagePath: "lib/images/japan6.png",
        price: "€ ${cartModel.nudelPrice}",
        rating: "4",
        details: () => Navigator.pushNamed(context, '/noodleHarmonyPage'),
      )
    ];

    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor:
            _isDarkMode ? Colors.black : Color.fromARGB(255, 33, 56, 93),
        appBar: AppBar(
          title: Text("M A K E R S P A C E"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(210, 186, 197, 214),
          elevation: 4,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isDarkMode = !_isDarkMode;
                });
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
                      "lib/images/M3.png",
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(210, 186, 197, 214),
                  borderRadius: BorderRadius.circular(20),
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
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
