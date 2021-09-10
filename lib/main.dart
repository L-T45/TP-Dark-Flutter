import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tp_quizz/screens/home_screen.dart';
import 'package:tp_quizz/services/routing_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Quizz App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomeScreen(),
        onGenerateRoute: Routing.generateRoute,
        //route inititale
        initialRoute: "/");
  }
}
