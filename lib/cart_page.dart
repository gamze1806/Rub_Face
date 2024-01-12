import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rub_face/models/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Color.fromARGB(255, 186, 197, 214),
        appBar: AppBar(
          title: Text("W A R E N K O R B"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(200, 33, 56, 93),
          elevation: 4,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  if (cartModel.mask > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 249, 249, 247),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Mask of fire",
                          style:
                              TextStyle(color: Color.fromARGB(200, 33, 56, 93)),
                        ),
                        subtitle: Text(
                          "€${cartModel.maskPrice}",
                          style:
                              TextStyle(color: Color.fromARGB(200, 33, 56, 93)),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartModel.mask.toString(),
                              style: TextStyle(
                                  color: Color.fromARGB(200, 33, 56, 93)),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () => cartModel.clearProduct(0),
                              icon: Icon(
                                Icons.delete,
                                color: Color.fromARGB(200, 33, 56, 93),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 15),
                  if (cartModel.spiral > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 249, 250, 248),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Art of spiral's",
                          style:
                              TextStyle(color: Color.fromARGB(200, 33, 56, 93)),
                        ),
                        subtitle: Text(
                          "€${cartModel.spiralPrice}",
                          style:
                              TextStyle(color: Color.fromARGB(200, 33, 56, 93)),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartModel.spiral.toString(),
                              style: TextStyle(
                                  color: Color.fromARGB(200, 33, 56, 93)),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () => cartModel.clearProduct(1),
                              icon: Icon(
                                Icons.delete,
                                color: Color.fromARGB(200, 33, 56, 93),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 15),
                  if (cartModel.cat > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 251, 248),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Queen of cat's",
                          style:
                              TextStyle(color: Color.fromARGB(200, 33, 56, 93)),
                        ),
                        subtitle: Text(
                          "€${cartModel.catPrice}",
                          style:
                              TextStyle(color: Color.fromARGB(200, 33, 56, 93)),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartModel.mask.toString(),
                              style: TextStyle(
                                  color: Color.fromARGB(200, 33, 56, 93)),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () => cartModel.clearProduct(2),
                              icon: Icon(
                                Icons.delete,
                                color: Color.fromARGB(200, 33, 56, 93),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 50),
                ],
              )),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 212, 219, 189),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 100,
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Menge der Events: ${cartModel.totalItems}",
                      style: TextStyle(
                          color: Color.fromARGB(255, 33, 56, 93),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      "Gesamtpreis: €${cartModel.totalPriceString}",
                      style: TextStyle(
                          color: Color.fromARGB(255, 33, 56, 93),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
