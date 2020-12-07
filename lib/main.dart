import 'package:flutter/material.dart';
import 'package:second_sestional/Navigation.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      home: HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.red
      ),

    );
  }
}

