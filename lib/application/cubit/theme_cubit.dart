import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

/// Holds logic pertaining to the theme
class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData.light(useMaterial3: true);
  static final _darkTheme = ThemeData.dark(useMaterial3: true);

  // toggle current brightness between light and dark
  void toggleTheme() =>
      emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
}
