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
                  hintTextValue: 'Ingresa tu email', 
                  labelTextValue: 'Email', 
                  keyboardTypeValue: TextInputType.emailAddress, 
                  obscureTextValue: false
                ),
                CustomInput(
                  hintTextValue: 'Ingresa tu contraseña',
                  labelTextValue: 'Contraseña',
                  keyboardTypeValue: TextInputType.text,
                  obscureTextValue: true,
                  icon: Icons.remove_red_eye_rounded,
                ),

                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(
                      child: Text('Usuario'),
                      value: 'user',
                    ),
                    DropdownMenuItem(
                      child: Text('Administrador'),
                      value: 'admin',
                    ),
                  ], 
                  onChanged: ( value ){

                  }
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: (){},
                  child: Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 20),
                    child: Text('Guardar'),
                  )
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
