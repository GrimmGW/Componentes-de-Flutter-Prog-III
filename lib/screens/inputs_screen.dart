import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            child: Column(
              children: [
                CustomInput(
                  hintTextValue: 'Ingresa tu nombre',
                  labelTextValue: 'Nombre',
                  keyboardTypeValue: TextInputType.text,
                  obscureTextValue: false,
                ),
                CustomInput(
                  hintTextValue: 'Ingresa tu apellido',
                  labelTextValue: 'Apellido',
                  keyboardTypeValue: TextInputType.text,
                  obscureTextValue: false,
                ),
                CustomInput(
                  hintTextValue: 'Ingresa tu contraseña',
                  labelTextValue: 'Contraseña',
                  keyboardTypeValue: TextInputType.text,
                  obscureTextValue: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
