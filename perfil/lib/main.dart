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
        
      ),
    );
  }
}
