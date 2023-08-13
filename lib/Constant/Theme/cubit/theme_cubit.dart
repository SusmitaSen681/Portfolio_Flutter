import 'package:bloc/bloc.dart';


class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(isDarkThemeOn: false));

  void updateTheme(bool value) => emit(ThemeState(isDarkThemeOn: value));
}

class ThemeState {
   final bool isDarkThemeOn;

  ThemeState({required this.isDarkThemeOn});
}