import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/cargando.gif",),
              Text("Cargando...",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 32,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      color: const Color.fromARGB(255, 73, 70, 70)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
