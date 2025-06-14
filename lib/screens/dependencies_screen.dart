import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DependenciesScreen extends StatelessWidget {
   
  const DependenciesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Text('DependenciesScreen'),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.indigoAccent,
        color: Colors.white,
        activeColor: Colors.black,
        rippleColor: Colors.indigo,
        tabBackgroundColor: Colors.indigo,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.thumb_up_alt_rounded,
            text: 'Likes',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
        ]
      ),
    );
  }
}