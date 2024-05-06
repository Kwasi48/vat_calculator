import 'package:flutter/material.dart';




final  lightTheme = ThemeData(
      // primaryColor: Colors.purple,
      // scaffoldBackgroundColor: const Co
      // useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromRGBO(116, 105, 182, 1.0),
    onPrimary: Colors.black,
    secondary: Color.fromRGBO(173, 136, 198, 1.0),
    onSecondary: Colors.black,
    error: Colors.redAccent ,
    onError: Colors.black,
    background: Color.fromRGBO(255, 230, 230, 1.0),
    onBackground:  Colors.black,
    surface: Color.fromRGBO(255, 175, 209, 1.0),
    onSurface: Colors.black,
  ),
     // brightness: Brightness.light,
  textTheme: const TextTheme(
    displayLarge: TextStyle( color: Colors.purple, fontSize: 32, fontFamily: 'Abel', fontWeight: FontWeight.w700 ),
    displayMedium: TextStyle(color: Colors.purple, fontSize: 28, fontFamily: 'Abel', fontWeight: FontWeight.w600),
    displaySmall: TextStyle(color: Colors.purple, fontSize: 16, fontFamily: 'Abel', fontWeight: FontWeight.w500),
  ),


  );


