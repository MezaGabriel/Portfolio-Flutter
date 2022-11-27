import 'package:flutter/material.dart';
import 'package:portfolio/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'listview1',
      icon: Icons.list,
      name: 'ListView type 1',
      screen: const ListView1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_alt,
      name: 'ListView type 2',
      screen: const ListView2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_outlined,
      name: 'Alerts',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.credit_card,
      name: 'Cards',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.person,
      name: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.play_arrow,
      name: 'Animated',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'inputs',
      icon: Icons.input_rounded,
      name: 'Text Inputs',
      screen: const InputsScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.arrow_forward_ios_outlined,
      name: 'Slider & Checks',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'listviewbuilder',
      icon: Icons.build_circle_outlined,
      name: 'Infinite Scroll & Pull to Refresh',
      screen: const ListViewBuilderScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

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
