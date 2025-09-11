import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfil/presentation/model/datos.dart';
import '../bloc2/bloc/page_bloc_bloc.dart';
import 'package:perfil/presentation/view/cargando.dart';
import 'package:perfil/presentation/view/failure.dart';

class SuccesDatos extends StatelessWidget {
  const SuccesDatos({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PageBlocBloc(), // Lanzar evento al crear
      child: Scaffold(
        body: Center(
          child: Card(
            color: const Color.fromARGB(255, 132, 142, 151),
            elevation: 4,
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      "assets/perfil.png",
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // BlocBuilder SOLO alrededor del contenido que cambia
                  BlocBuilder<PageBlocBloc, PageBlocState>(
                    builder: (context, state) {
                      if (state is PageLoading) {
                        return const Loading();
                      } else if (state is PageSuccess) {
                        final Datos datos = state.datos;
                        return SizedBox(
                          width: 250,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${datos.nombre}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "${datos.correo}",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 8),
                                  Text("${datos.telefono}"),
                                ],
                              ),
                            ),
                          ),
                        );
                      } else if (state is PageFailure) {
                        return Failure();
                      } else {
                        return SizedBox(); // Estado inicial u otros
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
