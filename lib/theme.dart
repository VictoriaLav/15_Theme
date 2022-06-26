import 'package:flutter/material.dart';

ThemeData _themeLight = ThemeData.light();

Color colorBlack = Colors.black54;
Color colorOrange = Colors.deepOrange[200]!;

Color colorTest = Colors.yellow;

ThemeData themeLight = _themeLight.copyWith(
  primaryColorDark: colorOrange,
  colorScheme: ColorScheme.light(
    primary: colorOrange,
  ),
  primaryTextTheme: TextTheme(
    titleMedium: TextStyle(color: Colors.white), //в аватаре
  ),
  appBarTheme: AppBarTheme(
    color: colorBlack,
    titleTextStyle: TextStyle(color: colorOrange, fontSize: 20),
    actionsIconTheme: IconThemeData(
      color: colorOrange
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: colorBlack,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(onPrimary: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
  ),
  cardTheme: CardTheme(
    elevation: 8,
    color: colorOrange,
  ),
  chipTheme: ChipThemeData(
    backgroundColor: colorBlack,
    selectedColor: colorOrange,
    labelStyle: TextStyle(color: Colors.white),
    checkmarkColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: colorBlack,
  ),
  dialogTheme: DialogTheme(
    backgroundColor: Colors.grey,
  ),
  textTheme: _textLight(_themeLight.textTheme),
);

TextTheme _textLight(TextTheme base) {
  return base.copyWith(
    bodyText1: base.bodyText1?.copyWith(
      color: colorTest,
    ),
    bodyText2: base.bodyText2?.copyWith(
      color: colorBlack,
    ),

  );
}
