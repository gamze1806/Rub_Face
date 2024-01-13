import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 204, 224),
      appBar: AppBar(
        title: Text("THE PERFECT ROOM"),
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Transform.rotate(
            angle: 45 * (pi / 1),
            child: Image.asset(
              "lib/images/BG8.png",
              fit: BoxFit.cover,
            ),
          ),
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Color.fromARGB(251, 233, 239, 249).withOpacity(0.8),
            ),
          ),
          ListView(
            children: [
              CustomWidget(
                imagePath: "lib/images/M5.png",
                title: "Kurze Pause mit der Gruppe gewünscht?",
              ),
              CustomWidget(
                imagePath: "lib/images/M2.png",
                title: "Privatsphäre in der Pause gewünscht?",
              ),
              CustomWidget(
                imagePath: "lib/images/M7.png",
                title: "Ungestört arbeiten mit tollem Aussicht!",
              ),
              CustomWidget(
                imagePath: "lib/images/M6.png",
                title: "Mal anders als sonst..",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final String imagePath;
  final String title;

  const CustomWidget({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          /*border: Border.all(
          color: Color.fromARGB(255, 148, 173, 64),
          width: 5,
        ),
        borderRadius: BorderRadius.circular(8.0),*/
          ),
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(168, 196, 208, 225),
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 33, 56, 93),
              ),
            ),
          ),
          Image.asset(
            imagePath,
            height: 450,
            width: 450,
          ),
        ],
      ),
    );
  }
}
