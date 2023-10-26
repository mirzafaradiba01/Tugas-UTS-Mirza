import 'package:uts/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.blue,
      fontFamily: 'Helvetica Neue',
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      
    },
  ));
}

