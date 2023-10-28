import 'package:flutter/material.dart';

class FestivalPage extends StatelessWidget {
  const FestivalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 165, 187),
      appBar: AppBar(
        title: Text("J A P A N"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.dark_mode),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'lib/images/japan7.png',
              height: 220,
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30,
                ),
                Text(
                  "5,0",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              "Mitama Matsuri Festival",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              "Das erwartet Sie",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              "Das Mitama Matsuri Festival in Tokyo beeindruckt mit Tausenden von leuchtenden Laternen, die den Yasukuni-Schrein erhellen und den Geistern der Kriegsopfer gewidmet sind. Besucher können traditionelle Darbietungen genießen, köstliches japanisches Streetfood probieren und an spirituellen Zeremonien teilnehmen ",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(25),
            height: 200,
            color: Color.fromARGB(255, 61, 91, 212),
            child: Column(
              children: [
                const Text(
                  "€49,00",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
