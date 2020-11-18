import 'package:equatable/equatable.dart';

abstract class DarkModeState extends Equatable {
  DarkModeState();
}

class DarkStateLoaded extends DarkModeState {
  final bool isDark;

  DarkStateLoaded(this.isDark);
  @override
  List<Object> get props => [isDark];
}

class DarkStateLoading extends DarkModeState {
  @override
  List<Object> get props => [];
}
