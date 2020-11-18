import 'package:equatable/equatable.dart';

abstract class DarkModeEvent extends Equatable {
  DarkModeEvent();
}

class ChangeDarkEvent extends DarkModeEvent {
  @override
  List<Object> get props => [];
}

class GetDarkEvent extends DarkModeEvent {
  @override
  List<Object> get props => [];
}
