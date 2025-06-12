import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String name;

  const CustomCard2({
    super.key, 
    required this.imageUrl, 
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 15,
      shadowColor: Colors.indigo,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            height: 260,
            width: double.infinity,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 600),
          ),

          if ( name != '' )
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
