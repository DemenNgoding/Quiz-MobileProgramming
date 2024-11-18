import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _theme;

  ThemeProvider(this._theme);

  ThemeData get theme => _theme;

  void setTheme(ThemeData theme) {
    _theme = theme;
    notifyListeners(); // Notify listeners to rebuild widgets
  }
}

// Define dark blue theme (theme3)
ThemeData theme3 = ThemeData(
  // Primary Color - Dark Blue
  primaryColor: Color(0xFF003366), // Dark Blue
  scaffoldBackgroundColor: Color(0xFFF5F5F5), // Light grey background
  // App bar theme with a dark blue color
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF002244), // Darker blue for app bar
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),

  // Button theme with dark blue color for buttons
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFF003366), // Dark blue buttons
    textTheme: ButtonTextTheme.primary,
  ),

  // Color scheme using complementary dark blue and light background
  colorScheme: ColorScheme.light(
    primary: Color(0xFF003366), // Dark blue primary
    secondary: Color(0xFF336699), // Lighter blue for secondary
    surface: Color(0xFFE0F2F1), // Very light teal surface
    background: Color(0xFFF5F5F5), // Soft light grey background
    error: Color(0xFFD32F2F), // Red error color
    onPrimary: Colors.white, // White text/icons on primary
    onSecondary: Colors.white, // White text/icons on secondary
    onSurface: Colors.black, // Black text on surface
    onBackground: Colors.black, // Black text on background
  ),

  // Brightness set to light for clean UI
  brightness: Brightness.light,
);
