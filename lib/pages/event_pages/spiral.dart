import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rub_face/components/button.dart';
import 'package:rub_face/models/cart_model.dart';

class ArtOfSpirals extends StatelessWidget {
  const ArtOfSpirals({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Color.fromARGB(255, 186, 197, 214),
        appBar: AppBar(
          title: Text("M A K E R S P A C E"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(85, 33, 56, 93),
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.dark_mode),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () => Navigator.pushNamed(context, '/cartPage'),
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 245,
              child: PageView(
                children: [
                  Image.asset('lib/images/S1.png'),
                  Image.asset('lib/images/S2.png'),
                ],
              ),
            ),
            SizedBox(height: 25),
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
                    "4,5",
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
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Color.fromARGB(255, 33, 56, 93),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                onPressed: () => cartModel.removeProduct(1),
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
                                onPressed: () => cartModel.addProduct(1),
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
                      event: () => Navigator.pushNamed(context, '/cartPage'),
                    )
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
