import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla de Tarjetas')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomCard1(
            leading: Icons.auto_graph_sharp,
            title: 'Excel',
            subtitle: 'Pertenezco a la Suite de Office',
            color: Colors.green[100],
          ),
          SizedBox(height: 10),
          CustomCard1(
            leading: Icons.abc_rounded,
            title: 'Word',
            subtitle: 'Pertenezco a la Suite de Office',
            color: Colors.blue[100],
          ),
          SizedBox(height: 10),
          CustomCard1(
            leading: Icons.present_to_all_rounded,
            title: 'PowerPoint',
            subtitle: 'Pertenezco a la Suite de Office',
            color: Colors.red[100],
          ),
          SizedBox(height: 10,),
          CustomCard2(imageUrl: "https://assets.tommackie.com/wp-content/uploads/2021/05/25133428/190253-1.jpg", name: ""),
          SizedBox(height: 10,),
          CustomCard2(imageUrl: "https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-3000x2000.jpg", name: "Una vista bonita")
        ],
      ),
    );
  }
}

