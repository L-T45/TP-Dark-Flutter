import 'package:flutter/material.dart';
import 'package:tp_quizz/screens/home_screen.dart';

class Routing {
  // méthode statique renvoyant la liste des routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // tester la route et le routage va afficher l'écran associé à la route
    switch (settings.name) {
      // écran d'accueil
      // default doit être en dernière position
      case '/':
      default:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
    }
  }
}
