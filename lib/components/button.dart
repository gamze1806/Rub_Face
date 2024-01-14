import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String myText;
  final void Function()? event;

  const MyButton({
    super.key,
    required this.myText,
    this.event,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: event,
      child: Material(
        elevation: 15.0,
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(207, 186, 197, 214),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                myText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
