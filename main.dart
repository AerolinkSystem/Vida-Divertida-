import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/game_screen.dart';
import 'screens/create_room_screen.dart';
import 'screens/join_room_screen.dart';

void main() => runApp(VidaDivertidaApp());

class VidaDivertidaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Vida Divertida',
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/game': (context) => GameScreen(),
        '/create': (context) => CreateRoomScreen(),
        '/join': (context) => JoinRoomScreen(),
      },
    );
  }
}