import 'package:examen1_programovil/Models/todos_model.dart';
import 'package:examen1_programovil/Presentation/Themes/main_theme.dart';
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
        title: const Center(child:  Text('Tareas Pendientes', style: textStyle)),
        backgroundColor: Colors.purple,
      ),
        drawer:appDrawer(context),
        body: ListView.builder(
        itemCount: todosList.length,
        itemBuilder: (context, index) {
          final todo = todosList[index];
          return Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black), 
              borderRadius: BorderRadius.circular(10), 
            ),
            child: ListTile(
              title: Text(
                todo.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.fecha,
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    todo.body,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
              contentPadding: const EdgeInsets.all(16),
            ),
          );
        },
      ),
    );
  }
}
    