import 'package:flutter/material.dart';

class SellersTheme {
  // Colors
  static final SellersColors colors = SellersColors();

  // Gradients
  static final SellersGradients gradients = SellersGradients();

  // Text
  static final SellersTextStyles textStyles = SellersTextStyles();

  // Text selection
  static final textSelectionTheme = TextSelectionThemeData(
    cursorColor: Color.fromARGB(255, 76, 175, 80),
    selectionColor: Color.fromARGB(79, 76, 175, 80),
    selectionHandleColor: Color.fromARGB(255, 76, 175, 80),
  );

  // Text button
  static final textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateColor.resolveWith(
        (states) => Color.fromARGB(255, 76, 175, 80),
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontFamily: 'Almarai',
          fontSize: 13,
          color: Color.fromARGB(255, 76, 175, 80),
        ),
      ),
    ),
  );
}

class SellersColors {
  Color primaryColor = Color.fromARGB(255, 76, 175, 80);
  Color primaryColorTransparent = Color.fromRGBO(16, 94, 177, 0.5);
  Color firstSecondaryColor = Color.fromARGB(255, 81, 143, 234);
  Color secondSecondaryColor = Color.fromARGB(255, 186, 134, 32);
  Color successColor = Color.fromARGB(255, 0, 109, 62);
  Color errorColor = Color.fromARGB(255, 155, 55, 77);
  Color backgroundColor = Color.fromARGB(255, 248, 250, 255);
  Color fieldFillColor = Color.fromARGB(255, 245, 245, 255);
  Color displayTextColor = Color.fromARGB(255, 27, 39, 51);
  Color fieldLabel = Colors.grey;
}

class SellersGradients {
  LinearGradient horizontalGradient = LinearGradient(
    colors: [
      Color.fromRGBO(26, 112, 176, 0.2),
      Color.fromRGBO(26, 112, 176, 0.8),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 1],
  );
  LinearGradient verticalGradient = LinearGradient(
    colors: [
      Color.fromRGBO(26, 112, 176, 0.2),
      Color.fromRGBO(26, 112, 176, 0.8),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 1],
  );
}

class SellersTextStyles {
  TextStyle titleLarge = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color.fromARGB(255, 76, 175, 80),
  );
  TextStyle titleMedium = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 13,
    color: Color.fromARGB(255, 76, 175, 80),
  );
  TextStyle displayLarge = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 10,
    color: Color.fromARGB(255, 117, 117, 117),
  );
  TextStyle displayMedium = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 8,
    color: Color.fromARGB(255, 117, 117, 117),
  );
  TextStyle labelSmall = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 10,
    color: Color.fromARGB(255, 117, 117, 117),
  );
  TextStyle fieldError = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 8,
    color: SellersTheme.colors.errorColor,
  );
  TextStyle fieldLabel = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 10,
    color: SellersTheme.colors.fieldLabel,
  );
}



class SellersInputDecoration extends InputDecoration {
  // Login credentials fields
  SellersInputDecoration.login({required String label, required String icon})
      : super(
          labelText: label,
          errorStyle: SellersTheme.textStyles.fieldError,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              'lib/assets/icons/$icon.png', // Assuming the icon is a PNG file
              color: SellersTheme.colors.primaryColor,
              height: 15,
              width: 15,
            ),
          ),
          labelStyle: SellersTheme.textStyles.fieldLabel,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          filled: true,
          fillColor: SellersTheme.colors.fieldFillColor,
        );

  // Form fields
  SellersInputDecoration.form({required String label, required Widget icon})
      : super(
          labelText: label,
          errorStyle: SellersTheme.textStyles.fieldError,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: icon,
          ),
          labelStyle: SellersTheme.textStyles.fieldLabel,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          filled: true,
          fillColor: SellersTheme.colors.fieldFillColor,
        );

  // Filters fields
  SellersInputDecoration.filter({required String label})
      : super(
          labelText: label,
          errorStyle: SellersTheme.textStyles.fieldError,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              'lib/assets/icons/search.png',
              color: Colors.grey,
              height: 15,
              width: 15,
            ),
          ),
          labelStyle: SellersTheme.textStyles.fieldLabel,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          filled: true,
          fillColor: SellersTheme.colors.fieldFillColor,
        );
}
