import 'package:flutter/material.dart';

class Failure extends StatelessWidget {
  const Failure({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/error.png"),
          SizedBox(height: 20),
          Text(
            "Ups, algo salió mal",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 17, 0),
              fontSize: 26,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  offset: Offset(5, 5),
                  blurRadius: 3,
                  color: Colors.black,
                )
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
