import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/navigation/new_routes.dart';
import 'package:grocery_shopping_app/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 183, 73)),
        useMaterial3: true,
      ),
      routerConfig: AppRouter().router,
    );
  }
}