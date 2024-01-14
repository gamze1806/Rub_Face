import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  @override
  _CustomPageState createState() => _CustomPageState();
}

bool _isDarkMode = false;

class _CustomPageState extends State<CustomPage> {
  //bool _isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDarkMode
          ? Colors.black
          : Color.fromARGB(
              255, 191, 204, 224), // Color.fromARGB(255, 191, 204, 224),
      appBar: AppBar(
        title: Text("THE PERFECT ROOM"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(85, 33, 56, 93),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
            icon: _isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.pushNamed(context, '/cartPage'),
            ),
          ),
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
              color: _isDarkMode
                  ? Color.fromARGB(255, 2, 15, 37).withOpacity(0.85)
                  : Color.fromARGB(255, 33, 56, 93).withOpacity(0.85),
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
        border: Border.all(
          color: Color.fromARGB(255, 246, 247, 248),
          width: 5,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(84, 214, 221, 233),
            //Color.fromARGB(85, 33, 56, 93),
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 247, 248, 249),
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
