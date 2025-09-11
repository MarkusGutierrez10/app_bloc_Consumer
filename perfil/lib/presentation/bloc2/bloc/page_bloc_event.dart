import 'package:equatable/equatable.dart';

sealed class PageBlocEvent extends Equatable {
  const PageBlocEvent();

  @override
  List<Object> get props => [];
}

class HomeSearchPressed extends PageBlocEvent{}
