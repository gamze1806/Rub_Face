import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rub_face/cart_page.dart';
import 'package:rub_face/models/cart_model.dart';
import 'package:rub_face/pages/event_pages/cat.dart';
import 'package:rub_face/pages/event_pages/mask.dart';
import 'package:rub_face/pages/event_pages/rooms.dart';
import 'package:rub_face/pages/event_pages/spiral.dart';
import 'package:rub_face/pages/menu_page.dart';
import 'package:rub_face/pages/start_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      child: const RubFace(),
      create: (context) => CartModel(),
    ),
  );
}

class RubFace extends StatelessWidget {
  const RubFace({super.key});

  // This widget is the root of your application.test
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      routes: {
        '/startPage': (context) => StartPage(),
        '/menuPage': (context) => MenuPage(),
        '/maskPage': (context) => RobotsPage(),
        '/spiralPage': (context) => ArtOfSpirals(),
        '/catPage': (context) => CatPage(),
        '/customPage': (context) => CustomPage(),
        '/cartPage': (context) => CartPage(),
      },
    );
  }
}
