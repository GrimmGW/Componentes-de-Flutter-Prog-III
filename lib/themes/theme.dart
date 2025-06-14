import 'package:flutter/material.dart';

class AppTheme {

  static Color? primary = Colors.indigo;
  static Color? primaryClear = Colors.indigo[100];

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    //Tema para el AppBar
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      foregroundColor: primaryClear,
      centerTitle: true,
    ),

    //Tema para el FAB
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: primaryClear,
    ),

    //Tema para botones
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(primary),
        foregroundColor: WidgetStateProperty.all(primaryClear)
      )
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(primary),
      )
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    //Tema para el AppBar
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      foregroundColor: primaryClear,
      centerTitle: true,
    ),

    //Tema para el FAB  
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: primaryClear,
    )
  );
}
