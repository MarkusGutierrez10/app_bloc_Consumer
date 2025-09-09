import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfil/presentation/bloc/bloc.dart';



import 'presentation/bloc/homeState.dart';
import 'presentation/view/cargando.dart';
import 'presentation/view/failure.dart';
import 'presentation/view/init.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is Cargando) {
              return Loading();
            } else if(state is Error){
              return Failure();
            } else if(state is Success){
              return Text("Salio bien");
            }else{
              return Initial();
            }
          },
        )
      ),
      );
  }
}
