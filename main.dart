import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(VidaDivertidaApp());

class VidaDivertidaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Vida Divertida',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}