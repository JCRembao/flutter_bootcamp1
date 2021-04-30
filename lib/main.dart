import 'package:flutter/material.dart';
import 'package:flutter_bootcamp1/change_colors/change_colors_page.dart';
import 'package:flutter_bootcamp1/example_1/example_1_page.dart';
import 'package:flutter_bootcamp1/example_2/example_2_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.redAccent[700],
        accentColor: Colors.blue[500],
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Theme.of(context).primaryColor)
      ),
      home: ChangeColorsPage()
    );
  }
}

