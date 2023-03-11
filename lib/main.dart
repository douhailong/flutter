import 'package:flutter/material.dart';
import 'package:flutter_app/pages/onboarding.dart';
import 'package:flutter_app/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      home: const OnBoarding(),
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
    );
  }
}
