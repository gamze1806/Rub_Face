import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  final String name, imagePath;
  final String price, rating;
  final void Function()? details;

  const EventTile({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.rating,
    this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(8),
      width: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(2500, 61, 91, 212),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: details,
            child: Image.asset(imagePath),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    rating,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: const Color.fromARGB(255, 224, 198, 6),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
