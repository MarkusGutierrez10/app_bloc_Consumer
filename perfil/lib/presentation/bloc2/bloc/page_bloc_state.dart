import 'package:equatable/equatable.dart';
import '../../model/datos.dart';

sealed class PageBlocState extends Equatable {
  const PageBlocState();
  
  @override
  List<Object> get props => [];
}

class PageInitial extends PageBlocState{}
class PageLoading extends PageBlocState{}
class PageSuccess extends PageBlocState{
  final Datos datos;
  PageSuccess(this.datos);
}
class PageFailure extends PageBlocState{}
