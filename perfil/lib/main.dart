import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfil/presentation/bloc/bloc.dart';
import 'package:perfil/presentation/bloc/homeState.dart';

import 'presentation/view/cargando.dart';
import 'presentation/view/failure.dart';
import 'presentation/view/home.dart';
import 'presentation/view/init.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => HomeBloc(),
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is Correcto) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Home()),
              );
            }
          },
          builder: (context, state) {
            if (state is Cargando) {
              return const Loading();
            } else if (state is Error) {
              return Failure();
            } else {
              return Initial();
            }
          },
        ),
      ),
    );
  }
}
