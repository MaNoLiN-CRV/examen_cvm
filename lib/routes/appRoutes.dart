import 'package:examen_cvm/models/models.dart';
import 'package:examen_cvm/screens/listViewScreen.dart';
import 'package:examen_cvm/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home', 
      icon: Icons.house_rounded, 
      name: 'Home Screen', 
      screen: const HomeScreen()),
    MenuOption(
      route: 'login',
      icon: Icons.login_rounded,
      name: 'Login',
      screen: const LoginScreen()
      ),
    MenuOption(
      route: 'alert',
      icon: Icons.warning_rounded,
      name: 'Alert',
      screen: const AlertScreen()
      ),
    MenuOption(
      route: 'listview',
      icon: Icons.list_rounded,
      name: 'List View',
      screen: ListViewScreen()
      ),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for ( final option in MenuOptions ) {
      appRoutes.addAll({option.route : ( BuildContext context ) => option.screen});
    }

    return appRoutes;

  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      }
  

}