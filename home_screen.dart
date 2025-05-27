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
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/create'),
              child: Text('Criar Sala'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/join'),
              child: Text('Entrar em Sala'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Minha Jornada')),
            ElevatedButton(onPressed: () {}, child: Text('Idiomas')),
          ],
        ),
      ),
    );
  }
}