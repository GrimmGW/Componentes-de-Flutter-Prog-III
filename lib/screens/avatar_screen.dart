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
              child: Text('HL'),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          backgroundImage: NetworkImage('https://i.imgur.com/3yKHuRy.png'),
          radius: 50,
         )
      ),
    );
  }
}