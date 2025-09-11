import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;



import 'homeEvent.dart';
import 'homeState.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc() : super(Inicio()) {

  on<HomeSearchPressed>((event, emit) async{
    emit(Cargando());
    final url = Uri.parse("https://raw.githubusercontent.com/MarkusGutierrez10/json/refs/heads/main/initial");
    http.Response respuesta = await http.get(url);
    if (respuesta.statusCode == 200) {
      emit(Correcto());
    }else{
      emit(Error());
    }


  });
  }
  
}
