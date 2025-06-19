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
    MenuOptions(route: 'container', icon: Icons.gif_box_rounded, name: 'Container Screen', screen: const ContainerScreen()),
    MenuOptions(route: 'dependencies', icon: Icons.temple_hindu_sharp, name: 'Dependencies Screen', screen: const DependenciesScreen()),
    MenuOptions(route: 'avatar', icon: Icons.person_2_rounded, name: 'Avatar Screen', screen: const AvatarScreen()),
    MenuOptions(route: 'inputs', icon: Icons.input_rounded, name: 'Inputs Screen', screen: const InputsScreen())
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'alert'        : (BuildContext context) => const AlertScreen(),
    'card'         : (BuildContext context) => const CardScreen(),
    'listview1'    : (BuildContext context) => const ListviewScreen(),
    'listview2'    : (BuildContext context) => const ListviewScreen2(),
    'container'    : (BuildContext context) => const ContainerScreen(),
    'dependencies' : (BuildContext context) => const DependenciesScreen(),
    'avatar'       : (BuildContext context) => const AvatarScreen(),
    'inputs'       : (BuildContext context) => const InputsScreen(),
  };
}
