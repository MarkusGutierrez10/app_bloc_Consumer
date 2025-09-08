
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 64, 63, 78),
      body: Center(
        child: Image.asset("assets/cargando.gif"),
      ),
    );
  }
}