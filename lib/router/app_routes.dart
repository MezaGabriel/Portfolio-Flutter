import 'package:flutter/material.dart';
import 'package:portfolio/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: delete home
    MenuOption(
      route: 'home',
      icon: Icons.home,
      name: 'Home Screen',
      screen: HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list,
      name: 'ListView type 1',
      screen: ListView1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_alt,
      name: 'ListView type 2',
      screen: ListView2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_outlined,
      name: 'Alerts',
      screen: AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.credit_card,
      name: 'Cards',
      screen: CardScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listView1': (context) => const ListView1Screen(),
  //   'listView2': (context) => const ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
