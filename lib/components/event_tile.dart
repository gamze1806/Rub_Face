import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  final String name, imagePath;
  final String price, rating;
  final void Function()? details;
  final Color colorMode;
  final Color colorText;
  //final VoidCallback? onAddToCart;

  const EventTile({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.rating,
    this.details,
    required this.colorMode,
    required this.colorText,
    //this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(8),
      width: 195,
      height: 200,
      decoration: BoxDecoration(
          color: colorMode,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: details,
            child: Image.asset(imagePath),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18, color: colorText),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: TextStyle(fontSize: 18, color: colorText),
              ),
              Row(
                children: [
                  Text(
                    rating,
                    style: TextStyle(fontSize: 14, color: colorText),
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
