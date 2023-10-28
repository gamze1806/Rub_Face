import 'package:flutter/material.dart';
import 'package:rub_face/pages/event_pages/festival.dart';
import 'package:rub_face/pages/menu_page.dart';
import 'package:rub_face/pages/start_page.dart';

void main() {
  runApp(const RubFace());
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
        '/robotsPage': (context) => RobotsPage(),
      },
    );
  }
}
