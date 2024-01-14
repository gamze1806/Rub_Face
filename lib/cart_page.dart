import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rub_face/models/cart_model.dart';
import 'package:rub_face/models/dark_mode_provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    DarkModeProvider darkModeProvider = Provider.of<DarkModeProvider>(context);
    bool _isDarkMode = darkModeProvider.isDarkMode;
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: _isDarkMode
            ? Color.fromARGB(152, 7, 17, 32)
            : Color.fromARGB(255, 162, 180, 206),
        appBar: AppBar(
          title: Text("W A R E N K O R B"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(94, 33, 56, 93),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                darkModeProvider.toggleDarkMode();
              },
              icon:
                  _isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    if (cartModel.cat > 0)
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 249, 247),
                          borderRadius: BorderRadius.circular(12),
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
                        child: ListTile(
                          title: Text(
                            "Queen of cats",
                            style: TextStyle(
                                color: Color.fromARGB(200, 33, 56, 93)),
                          ),
                          subtitle: Text(
                            "€${cartModel.catPrice}",
                            style: TextStyle(
                                color: Color.fromARGB(200, 33, 56, 93)),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                cartModel.cat.toString(),
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
                    if (cartModel.spider > 0)
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 250, 248),
                          borderRadius: BorderRadius.circular(12),
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
                        child: ListTile(
                          title: Text(
                            "Spiders magic",
                            style: TextStyle(
                                color: Color.fromARGB(200, 33, 56, 93)),
                          ),
                          subtitle: Text(
                            "€${cartModel.spiderPrice}",
                            style: TextStyle(
                                color: Color.fromARGB(200, 33, 56, 93)),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                cartModel.spider.toString(),
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
                    if (cartModel.mask > 0)
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 251, 248),
                          borderRadius: BorderRadius.circular(12),
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
                        child: ListTile(
                          title: Text(
                            "Mask of fire",
                            style: TextStyle(
                                color: Color.fromARGB(200, 33, 56, 93)),
                          ),
                          subtitle: Text(
                            "€${cartModel.maskPrice}",
                            style: TextStyle(
                                color: Color.fromARGB(200, 33, 56, 93)),
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
                    SizedBox(height: 15),
                    if (cartModel.spiral > 0)
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 251, 248),
                          borderRadius: BorderRadius.circular(12),
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
                        child: ListTile(
                          title: Text(
                            "Art of spirals",
                            style: TextStyle(
                                color: Color.fromARGB(200, 33, 56, 93)),
                          ),
                          subtitle: Text(
                            "€${cartModel.spiralPrice}",
                            style: TextStyle(
                                color: Color.fromARGB(200, 33, 56, 93)),
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
                                onPressed: () => cartModel.clearProduct(3),
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
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(178, 255, 255, 255),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color.fromARGB(255, 197, 209, 159),
                    width: 3.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(142, 255, 255, 255),
                      blurRadius: 5.0,
                      spreadRadius: 3.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                height: 100,
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Menge der Produkte:\nGesamtpreis:",
                      style: TextStyle(
                          color: Color.fromARGB(255, 33, 56, 93),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Text(
                      "   ${cartModel.totalItems}\n€${cartModel.totalPriceString}",
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
