import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de Alerta'),
        elevation: 50,
      ),
      body: Center(child: Text('AlertScreen')),
    );
  }
}
