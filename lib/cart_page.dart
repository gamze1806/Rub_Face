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
                  if (cartModel.nudelsuppe > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 148, 173, 64),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Nudelsuppe",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "€18.00",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartModel.nudelsuppe.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () => cartModel.clearNudelSuppe(),
                              icon: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 15),
                  if (cartModel.festival > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 148, 173, 64),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Mitama Matsumi Festival",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "€49.00",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartModel.festival.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () => cartModel.clearFestival(),
                              icon: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 148, 173, 64),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text(
                        "Menge der Events",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        cartModel.totalItems.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            cartModel.festival.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: () => cartModel.clearFestival(),
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
