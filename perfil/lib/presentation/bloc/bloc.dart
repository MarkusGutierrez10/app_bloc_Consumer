import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';



import 'homeEvent.dart';
import 'homeState.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc() : super(Inicio()) {

  on<HomeSearchPressed>((event, emit) async{

      final dio = Dio();
      final url = "https://jsonplaceholder.typicode.com/posts";

      try {
        final response = await dio.post(
          url,
          data: {"usuario": event.user, "contrasena": event.pass},
          options: Options(headers: {"Content-Type": "application/json"}),
        );

        emit(Cargando());
        if (response.statusCode == 201) {
          await Future.delayed(Duration(seconds: 5));
          emit(Correcto());
        } else {
          emit(Error());
        }
      } catch (e) {
        emit(Error());
      }
    });
  }
}
