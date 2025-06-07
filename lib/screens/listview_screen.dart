import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  final videojuegos = const ['Megaman', 'Smash Bros', 'Metal Gear', 'Balatro'];

  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview1'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          //spread
          ...videojuegos
              .map(
                (game) => ListTile(
                  title: Text(game),
                  leading: Icon(Icons.add),
                  subtitle: Text('Soy un subtitulo'),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
