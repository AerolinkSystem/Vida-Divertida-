import 'package:flutter/material.dart';
import 'dart:math';

class CreateRoomScreen extends StatelessWidget {
  String generateRoomCode() {
    const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
    final rand = Random();
    return String.fromCharCodes(Iterable.generate(
        5, (_) => chars.codeUnitAt(rand.nextInt(chars.length))));
  }

  @override
  Widget build(BuildContext context) {
    String roomCode = generateRoomCode();

    return Scaffold(
      appBar: AppBar(title: Text("Criar Sala")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Código da sua sala:", style: TextStyle(fontSize: 18)),
            SizedBox(height: 12),
            Text(roomCode, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
              child: Text("Entrar na Sala")
            )
          ],
        ),
      ),
    );
  }
}