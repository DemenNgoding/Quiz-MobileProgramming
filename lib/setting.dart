import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'font_provider.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final fontProvider = Provider.of<FontProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Theme:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                themeProvider.setTheme(ThemeData.light());
              },
              child: Text('Light Theme'),
            ),
            ElevatedButton(
              onPressed: () {
                themeProvider.setTheme(ThemeData.dark());
              },
              child: Text('Dark Theme'),
            ),
            ElevatedButton(
              onPressed: () {
                themeProvider.setTheme(theme3); // Dark Blue Theme
              },
              child: Text('Dark Blue Theme'),
            ),
            SizedBox(height: 20),
            Text(
              'Select Font:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                fontProvider.setFont(
                  TextStyle(fontSize: 16, fontFamily: 'Times New Roman'),
                );
              },
              child: Text('Times New Roman'),
            ),
            ElevatedButton(
              onPressed: () {
                fontProvider.setFont(
                  TextStyle(fontSize: 16, fontFamily: 'Open Sans'),
                );
              },
              child: Text('Open Sans'),
            ),
            ElevatedButton(
              onPressed: () {
                fontProvider.setFont(
                  TextStyle(fontSize: 16, fontFamily: 'Georgia'),
                );
              },
              child: Text('Georgia'),
            ),
          ],
        ),
      ),
    );
  }
}
