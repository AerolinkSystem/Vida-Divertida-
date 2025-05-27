import 'package:flutter/material.dart';
import '../firebase/firebase_mock.dart';

class CreateRoomScreen extends StatefulWidget {
  @override
  _CreateRoomScreenState createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  late String roomCode;
  List<String> jogadores = [];

  @override
  void initState() {
    super.initState();
    roomCode = generateRoomCode();
    SalaSimulada.criarSala(roomCode, "Você");
    atualizarJogadores();
  }

  void atualizarJogadores() {
    final lista = SalaSimulada.listarJogadores(roomCode);
    if (lista != null) {
      setState(() {
        jogadores = lista;
      });
    }
  }

  String generateRoomCode() {
    const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
    return List.generate(5, (index) => chars[(DateTime.now().millisecondsSinceEpoch + index) % chars.length]).join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sala Criada")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Código da Sala:", style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            Text(roomCode, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Divider(height: 32),
            Text("Jogadores na sala:", style: TextStyle(fontSize: 18)),
            SizedBox(height: 12),
            ...jogadores.map((j) => Text("• $j", style: TextStyle(fontSize: 16))),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
              child: Text("Iniciar Partida"),
            ),
          ],
        ),
      ),
    );
  }
}