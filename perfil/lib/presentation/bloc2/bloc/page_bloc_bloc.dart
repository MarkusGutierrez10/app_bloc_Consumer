import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

import '../../model/datos.dart';
import 'page_bloc_event.dart';


part 'page_bloc_state.dart';

class PageBlocBloc extends Bloc<PageBlocEvent, PageBlocState> {
  PageBlocBloc() : super(PageInitial()) {
    on<PageBlocEvent>((event, emit) async {
      emit(PageLoading());
        final url = Uri.parse('https://raw.githubusercontent.com/MarkusGutierrez10/app_Productos/refs/heads/main/datos.json');
        final response = await http.get(url);
        if (response.statusCode == 200){
          Map objectMap = jsonDecode(response.body);
          Datos datos = Datos(objectMap);
          emit(PageSuccess(datos));
        }else{
          emit(PageFailure());
        }


    });
  }
}
