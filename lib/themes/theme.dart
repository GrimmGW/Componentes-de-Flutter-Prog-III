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

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppTheme.primary),
        foregroundColor: WidgetStateProperty.all(AppTheme.primaryClear),
      ),
    ),

    //Tema para inputs
    inputDecorationTheme: InputDecorationTheme(
      
      floatingLabelStyle: TextStyle( color: primary ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary!,
          width: 3
        )
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10)
        )
      )
    )
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
