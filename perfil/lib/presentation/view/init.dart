
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';
import '../bloc/homeEvent.dart';

class Initial extends StatelessWidget {
  const Initial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              final homeBloc = BlocProvider.of<HomeBloc>(context);
              homeBloc.add(HomeSearchPressed());
            },
            child: Text('Empezar'),
          )
        ],
       ),
      ),
    );
  }
}
