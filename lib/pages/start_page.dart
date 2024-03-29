import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rub_face/components/button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage>
    with SingleTickerProviderStateMixin {
  int _currentImageIndex = 0;
  late Timer _timer;

  List<String> images = [
    "lib/images/M5.png",
    "lib/images/M2.png",
  ];

  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _startImageTimer();
  }

  void _startImageTimer() {
    _timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      _animationController.reverse(from: 1);
      setState(() {
        _currentImageIndex = (_currentImageIndex + 1) % images.length;
      });
    });
  }

  void dispose() {
    _timer.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "M A K E R S P A C E",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(210, 186, 197, 214),
        elevation: 4,
        leading: Icon(Icons.menu),
      ),
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Transform.rotate(
            angle: 45 * (pi / 1.5),
            child: Image.asset(
              "lib/images/BG2.png",
              fit: BoxFit.cover,
            ),
          ),
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Color.fromARGB(255, 26, 43, 71).withOpacity(0.85),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Center(
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Image.asset(
                    images[_currentImageIndex],
                    height: 450,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Material(
                  elevation: 20,
                  color: Color.fromARGB(255, 24, 41, 68),
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Einzigartig angefertigte Produkte der Makerspace warten auf dich!",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Material(
                  elevation: 20,
                  color: Color.fromARGB(255, 24, 41, 68),
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Starte deine Reise durch die Makerspace und lass dich selbst überzeugen.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: MyButton(
                  myText: "Reise starten",
                  event: () => Navigator.pushNamed(context, '/menuPage'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
