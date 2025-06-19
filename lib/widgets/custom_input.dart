import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

  final String hintTextValue;
  final String labelTextValue;
  final TextInputType keyboardTypeValue;
  final bool obscureTextValue;


  const CustomInput({
    super.key, 
    required this.hintTextValue, 
    required this.labelTextValue, 
    required this.keyboardTypeValue, 
    required this.obscureTextValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        initialValue: '',
        autofocus: false,
        keyboardType: keyboardTypeValue,
        obscureText: obscureTextValue,
        // textCapitalization: TextCapitalization.characters,
        onChanged: (value) {
          print('Valor actual: $value');
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintTextValue,
          labelText: labelTextValue,
          // helperText: 'Solo letras',
          // prefixIcon: Icon(Icons.person),
          // icon: Icon(Icons.person),
          
          // suffixIcon: IconButton(
          //   onPressed: (){}, 
          //   icon: Icon(Icons.remove_red_eye)
          // ),
        ),
      ),
    );
  }
}