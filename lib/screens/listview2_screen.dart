import 'package:fl_components/routes/app_routes.dart';
import 'package:flutter/material.dart';

class ListviewScreen2 extends StatelessWidget {
  final videojuegos = const ['Megaman', 'Smash Bros', 'Metal Gear', 'Balatro'];

  const ListviewScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview2', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(AppRoutes.menuOptions[index].name),
            leading: Icon(AppRoutes.menuOptions[index].icon),
            subtitle: Text('Soy un subtitulo'),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
          );
        },
      ),
    );
  }
}
