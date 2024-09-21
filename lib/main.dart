import 'package:examen1_programovil/Presentation/Screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true),
        home: const HomeScreen(),
      );
  }
}
