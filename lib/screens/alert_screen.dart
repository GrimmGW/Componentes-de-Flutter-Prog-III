import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: Icon(Icons.warning_rounded),
          title: Text("Esta es una alerta"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Nisi consectetur adipisicing ipsum consequat Lorem et nostrud consequat mollit qui.",
              ),
              // SizedBox(height: 10,),
              // FlutterLogo(size: 80,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla de Alerta')),
      body: Center(
        child: FilledButton(
          onPressed: () {
            displayDialog(context);
          },
          child: Text("Toca aqui"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
