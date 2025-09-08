
import 'package:flutter/material.dart';

class Failure extends StatelessWidget {
  const Failure({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/error.png"),
            Text("Ups, algo salio mal",
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 17, 0),
                fontSize: 26,
                fontWeight: FontWeight.bold,
                shadows: [Shadow(
                  offset: Offset(5, 5),
                  blurRadius: 3,
                  color: Colors.black
                )]
              ),             
            )
          ],
        )
      ),
    );
  }
}
