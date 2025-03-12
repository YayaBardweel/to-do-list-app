import 'package:flutter/material.dart';
import 'package:untitled1/the_welcomScreen_and_login/theApp.dart';
import 'package:untitled1/the_welcomScreen_and_login/welcomScreen.dart';

void main() {

  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        showSemanticsDebugger: false,
        debugShowCheckedModeBanner: false,
        initialRoute: 'WelcomeScreen',
        routes: {
          'WelcomeScreen': (context) => WelcomeScreen(),
          'todolist': (context) => todolist()
        });
  }
}
