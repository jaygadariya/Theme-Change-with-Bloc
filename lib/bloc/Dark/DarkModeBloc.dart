import 'package:black_mode/bloc/Dark/DarkModeEvent.dart';
import 'package:black_mode/bloc/Dark/DarkModeState.dart';
import 'package:black_mode/resource/Repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkModeBloc extends Bloc<DarkModeEvent, DarkModeState> {
  final repository = Repository();

  DarkModeBloc() : super(DarkStateLoading());

  @override
  Stream<DarkModeState> mapEventToState(DarkModeEvent event) async* {
    if (event is ChangeDarkEvent) {
      yield* _mapEventToState(false);
    } else if (event is GetDarkEvent) {
      yield* _mapEventToState(true);
    }
  }

  Stream<DarkModeState> _mapEventToState(needToChange) async* {
    yield DarkStateLoading();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool isDark = preferences.getBool('theme');

    bool val = await repository.darkMode(isDark == null ? true : isDark, needToChange);
    preferences.setBool('theme', val);
    yield DarkStateLoaded(val);
  }
}
