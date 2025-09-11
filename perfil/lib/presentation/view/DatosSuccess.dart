import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc2/bloc/page_bloc_bloc.dart';
import '../bloc2/bloc/page_bloc_state.dart';
import '../bloc2/bloc/page_event.dart';
import '../model/datos.dart';
import 'cargando.dart';
import 'failure.dart';

class SuccesDatos extends StatelessWidget {
  const SuccesDatos({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageBlocBloc()..add(HomeSearchPressed()),
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: BlocBuilder<PageBlocBloc, PageBlocState>(
            builder: (context, state) {
              if (state is PageLoading) {
                return Loading();
              } else if (state is PageSuccess) {
                final Datos datos = state.datos;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("assets/markus.jpeg"),
                      backgroundColor: Colors.grey[300],
                    ),
                    SizedBox(height: 20),

                    Card(
                      elevation: 10,
                      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 116, 120, 143),
                              Colors.red.shade200
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: const Icon(Icons.person, color: Colors.white),
                              title: Text(
                                "${datos.nombre}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: const Text(
                                "Usuario Premium",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                            Divider(color: Colors.white54, thickness: 1),
                            ListTile(
                              leading: const Icon(Icons.email, color: Colors.white),
                              title: Text(
                                "${datos.correo}",
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            ListTile(
                              leading: const Icon(Icons.phone, color: Colors.white),
                              title: Text(
                                "${datos.telefono}",
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Failure(); 
              }
            },
          ),
        ),
      ),
    );
  }
}
