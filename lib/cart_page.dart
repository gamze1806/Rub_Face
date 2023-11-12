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
            ));
  }
}
