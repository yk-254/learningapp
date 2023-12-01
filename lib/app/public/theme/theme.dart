import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  var borderRadius = SmoothBorderRadius(cornerRadius: 15, cornerSmoothing: 1.1);
  return ThemeData(
    //* swatch

    primarySwatch: Colors.yellow,
    primaryColor: const Color(0xff2C2C2C),
    //* primary
    // ignore: deprecated_member_use
    // accentColor: const Color(0xff49B0AA),
    iconTheme: const IconThemeData(size: 25, color: Color(0xFF707070)),
    errorColor: const Color(0xFFEC1B1B),
    hintColor: const Color(0xFFC5C5C5),
    cardColor: Colors.white,
    splashColor:
        const Color(0xFFC5C5C5), // canvasColor:const Color(0xFFF3DC10),
    backgroundColor: Color(0xfffafafa),
    //* appbar
    appBarTheme: const AppBarTheme(
        color: Color(0xff2C2C2C),
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white)),
    //* tabbar
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: Color(0xFF609FFF),
          width: 2,
        ),
      ),
    ),
    //*  scaffold
    scaffoldBackgroundColor: Colors.white,
    //* elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color(0xff00534E))),
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xff49B0AA),
        ),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    //* fonts
    fontFamily: 'Shabnam',
    textTheme: TextTheme().apply(fontSizeDelta: -2),
    //* input decoration
    inputDecorationTheme: InputDecorationTheme(
        fillColor: Color(0xFFe8f4f4),
        filled: true,
        hintStyle: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.63)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xff2C2C2C),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:  BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        suffixIconColor: Colors.white,
        prefixIconColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5)),
  );
}

extension ColorSchemeLight on ColorScheme {
  Color get borderInputColor => const Color(0xFFCCCCCC);
  Color get greytodark => const Color(0xFF707070);
}
