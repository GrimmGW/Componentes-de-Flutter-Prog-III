import 'package:fl_components/themes/theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider y Checks'),
      ),
      body: Column(
        children: [
          Slider(
            min: 50,
            max: 300,
            value: _sliderValue, 
            onChanged: _isActive == true ? ( value ){
              _sliderValue = value;
              setState(() {
                
              });
            } : null
          ),

          // Checkbox(
          //   value: _isActive, 
          //   onChanged: ( value ){
          //     _isActive = value!;
          //     setState(() {
                
          //     });
          //   }
          // ),

          // CheckboxListTile(
          //   //Temas
          //   activeColor: AppTheme.primary,
          //   title: Text('Terminos y condiciones', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold),),
          //   subtitle: Text('Al tocar el checkbox, estarás aceptando los términos y condiciones.'),
          //   value: _isActive, 
          //   onChanged: ( value ){
          //     _isActive = value!;
          //     setState(() {
                
          //     });
          //   }
          // ),

          // Switch(
          //   value: _isActive, 
          //   onChanged: ( value ){
          //     _isActive = value;
          //     setState(() {
                
          //     });
          //   }
          // ),

          SwitchListTile(
            //Temas
            activeColor: AppTheme.primary,
            title: Text('Terminos y condiciones', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold),),
            subtitle: Text('Al tocar el checkbox, estarás aceptando los términos y condiciones.'),
            value: _isActive, 
            onChanged: ( value ){
              _isActive = value;
              setState(() {
                
              });
            }
          ),
          AboutListTile()
        ],
      )
    );
  }
}