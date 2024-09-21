import 'package:examen1_programovil/Models/todos_model.dart';
import 'package:examen1_programovil/Presentation/Widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}


List<Todos> todosList = [
  Todos(title: 'Examen de Programacion Movil', fecha: 'Septiembre 21, 2024', body: 'Estudiar conceptos de Dart y Flutter'),
  Todos(title: 'Enviar correo', fecha: 'Septiembre 25, 2024', body: 'Enviar correo a Ing Ivan para que me de 100 en el examen'),
  Todos(title: 'Revisar código', fecha: 'Septiembre 20, 2024', body: 'Revisar el código de mis compañeros del proyecto final de Progra M'),
  Todos(title: 'Examen de Matemáticas', fecha: 'Septiembre 25, 2024', body: 'Repasar los capítulos 4 y 5 para el examen de matemáticas'),
  Todos(title: 'Proyecto de programación', fecha: 'Septiembre 26, 2024', body: 'Completar el código y pruebas del proyecto de la clase de programación.'),
  Todos(title: 'Ensayo de Historia', fecha: 'Septiembre 28, 2024', body: 'Revisar y enviar el ensayo sobre la Revolución Industrial.'),
  Todos(title: 'Asistir a la reunión estudio', fecha: 'Septiembre 30, 2024', body: 'Reunirse con el grupo de estudio para discutir la tarea de física.')
];

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Noticias Importantes')),
        backgroundColor: Colors.purple,
      ),
        drawer:appDrawer(context),
        body: ListView.builder(
        itemCount: todosList.length,
        itemBuilder: (context, index) {
          final todo = todosList[index];
          return ListTile(
            title: Text(todo.title),
            subtitle: Text(
              '${todo.fecha}\n${todo.body}',
          )
          );
          }
          ),
      );
  }
}
    