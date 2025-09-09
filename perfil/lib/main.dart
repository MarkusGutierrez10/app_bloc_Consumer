import 'package:flutter/material.dart';


import 'presentation/view/cargando.dart';
import 'presentation/view/failure.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 187, 208, 224),
        body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Bienvenido",
              style: TextStyle(
                fontSize: 46,
                color: Colors.white,
                shadows: [
                  Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 3,
                  color: const Color.fromARGB(255, 100, 96, 96)
                )]
              ),
            ),
            SizedBox(height: 20),
            Icon(
                Icons.waving_hand,
                size: 100,
                color: Colors.blue,
              ),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                print('Botón presionado');
              },
              child: Text('Empezar'),
            )
          ],
         ),
        ),
      ),
    );
  }
}
