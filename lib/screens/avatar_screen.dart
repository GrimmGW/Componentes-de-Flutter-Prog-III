import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi perfil"),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://static.tvtropes.org/pmwiki/pub/images/thecathodehimself.png'),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          backgroundImage: NetworkImage('https://static.tvtropes.org/pmwiki/pub/images/thecathodehimself.png'),
          radius: 50,
         )
      ),
    );
  }
}