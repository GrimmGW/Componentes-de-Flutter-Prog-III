import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  final IconData leading;
  final String title;
  final String subtitle;
  final Color? color;

  const CustomCard1({
    super.key, 
    required this.leading, 
    required this.title, 
    required this.subtitle,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            tileColor: color,
            leading: Icon(leading),
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        ],
      ),
    );
  }
}
