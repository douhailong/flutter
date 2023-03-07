import 'package:flutter/material.dart';
import 'package:flutter_app/config/basic_color.dart';

import 'package:flutter_app/pages/start_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '_dou',
      home: const StartPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: BasicColors.page,
        canvasColor: BasicColors.nav,
        appBarTheme: const AppBarTheme(
          backgroundColor: BasicColors.nav,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: BasicColors.nav,
          selectedItemColor: BasicColors.active,
          unselectedItemColor: BasicColors.unactive,
        ),
      ),
    );
  }
}
