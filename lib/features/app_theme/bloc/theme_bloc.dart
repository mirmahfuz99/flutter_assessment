import 'package:flutter_assessment/features/app_theme/bloc/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ThemeEvent { toggleDark, toggleLight }

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.lightTheme);

  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    switch (event) {
      case ThemeEvent.toggleDark:
        yield ThemeState.darkTheme;
        break;
      case ThemeEvent.toggleLight:
        yield ThemeState.lightTheme;
        break;
    }
  }
}