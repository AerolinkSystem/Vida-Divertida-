import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  final List<Map<String, dynamic>> hand = [
    {'name': 'Fez a lição', 'icon': '⭐', 'value': 1},
    {'name': 'Ajudou amigo', 'icon': '❤️', 'value': 1},
    {'name': 'Construiu castelo', 'icon': '⭐❤️', 'value': 2},
    {'name': 'Perdeu lanche', 'icon': '❗', 'value': -1},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF6E3),
      appBar: AppBar(title: Text("Sala de Jogo")),
      body: Column(
        children: [
          SizedBox(height: 10),
          Text("Sua vez!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hand.length,
              itemBuilder: (context, index) {
                final card = hand[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.orange[100],
                  child: Container(
                    width: 150,
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(card['name'], style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10),
                        Text(card['icon'], style: TextStyle(fontSize: 32)),
                        Text('Pontos: ${card['value']}')
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Jogar Carta")),
          ElevatedButton(onPressed: () {}, child: Text("Comprar do Monte")),
          ElevatedButton(onPressed: () {}, child: Text("Pegar do Descarte")),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}