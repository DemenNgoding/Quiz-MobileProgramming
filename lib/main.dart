import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'font_provider.dart';
import 'bottom_nav_bar.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(ThemeData.light()), // Default theme is light
      child: ChangeNotifierProvider(
        create:
            (_) => FontProvider(TextStyle(fontSize: 16, fontFamily: 'Roboto')),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final fontProvider = Provider.of<FontProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.theme.copyWith(
        textTheme: themeProvider.theme.textTheme.apply(
          fontFamily: fontProvider.textStyle.fontFamily,
        ),
      ),
      home: BottomNavBar(),
    );
  }
}
