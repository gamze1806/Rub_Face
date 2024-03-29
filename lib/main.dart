import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rub_face/cart_page.dart';
import 'package:rub_face/models/cart_model.dart';
import 'package:rub_face/pages/event_pages/cat.dart';
import 'package:rub_face/pages/event_pages/mask.dart';
import 'package:rub_face/pages/event_pages/rooms.dart';
import 'package:rub_face/pages/event_pages/spider.dart';
import 'package:rub_face/pages/event_pages/spiral.dart';
import 'package:rub_face/pages/menu_page.dart';
import 'package:rub_face/pages/start_page.dart';
import 'package:rub_face/models/dark_mode_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartModel()),
        ChangeNotifierProvider(create: (context) => DarkModeProvider()),
      ],
      child: const RubFace(),
    ),
  );
}

class RubFace extends StatelessWidget {
  const RubFace({super.key});

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
        '/spiderPage': (context) => SpiderPage(),
        '/customPage': (context) => CustomPage(),
        '/cartPage': (context) => CartPage(),
      },
    );
  }
}
