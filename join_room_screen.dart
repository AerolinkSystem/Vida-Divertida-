import 'package:flutter/material.dart';

class JoinRoomScreen extends StatefulWidget {
  @override
  _JoinRoomScreenState createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Entrar em Sala")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Digite o código da sala:"),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
              child: Text("Entrar")
            )
          ],
        ),
      ),
    );
  }
}