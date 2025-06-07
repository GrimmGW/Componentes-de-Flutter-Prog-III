import 'package:fl_components/models/menu_options.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  
  static const initialRoute = 'listview2';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'alert', icon: Icons.add_alert_rounded, name: 'Alert Screen', screen: const AlertScreen()),
    MenuOptions(route: 'card', icon: Icons.card_giftcard_sharp, name: 'Card Screen', screen: const CardScreen()),
    MenuOptions(route: 'listview1', icon: Icons.list_alt_rounded, name: 'Listview1 Screen', screen: const ListviewScreen()),
    MenuOptions(route: 'listview2', icon: Icons.list_alt_rounded, name: 'Listview2 Screen', screen: const ListviewScreen2()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'alert': (BuildContext context) => AlertScreen(),
    'card': (BuildContext context) => CardScreen(),
    'listview1': (BuildContext context) => ListviewScreen(),
    'listview2': (BuildContext context) => ListviewScreen2(),
  };
}
