
import 'package:examen1_programovil/Presentation/Screens/home_screen.dart';
import 'package:examen1_programovil/Presentation/Screens/noticias_screen.dart';
import 'package:examen1_programovil/Presentation/Screens/todo_screen.dart';
import 'package:flutter/material.dart';

appDrawer (BuildContext context){
return Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Color.fromARGB(215, 180, 54, 167),
        ),
        child: Text('Menu'),
      ),
      ListTile(
        title: const Text('Inicio 1'),
        onTap: () {
           Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          )
          );
        },
      ),
      ListTile(
        title: const Text('Noticias Ceutec'),
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NoticiasScreen(),
          )
          );
        },
      ),
      ListTile(
        title: const Text('To-Dos'),
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TodoScreen(),
          )
          );
        },
      ),
    ],
  ),
);

}