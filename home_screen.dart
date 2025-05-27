import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF8E1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('A Vida Divertida', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
            SizedBox(height: 40),
            ElevatedButton(onPressed: () {}, child: Text('Jogar Agora')),
            ElevatedButton(onPressed: () {}, child: Text('Minha Jornada')),
            ElevatedButton(onPressed: () {}, child: Text('Idiomas')),
          ],
        ),
      ),
    );
  }
}