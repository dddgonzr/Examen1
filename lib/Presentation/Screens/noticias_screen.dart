import 'package:examen1_programovil/Models/news_model.dart';
import 'package:examen1_programovil/Presentation/Widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class NoticiasScreen extends StatefulWidget {
  const NoticiasScreen({super.key});

  @override
  State<NoticiasScreen> createState() => _NoticiasScreenState();
}

List<Noticias> noticiasList = [
    Noticias(
      title: 'Los Jaguares ganan 3 Lugar!',
      body: 'El equipo de futbol mayor masculino gana el tercer lugar tras perder tragicamente partido de semifinales.....',
      image: Image.asset('lib/Assets/download.jpg')
    ), 
    Noticias(
      title: 'Se Aproxima Feria de Ciencias',
      body: 'Los estudiantes de Ceutec Sede Central preparan fervientement sus estudios y proyectos realizados para la feria anual de Ciencias....',
      image: Image.asset('lib/Assets/feria.jpg'),
    ),
    Noticias(
      title: 'Examenes Finales Presenciales',
      body: 'El final del Trimestre esta aqui y eso significa solo una cosa! Los examenes finales se realizaran de manera presencial sin excepcion alguna.. ',
      image: Image.asset('lib/Assets/examenes.jpg'),
    ),

];

class _NoticiasScreenState extends State<NoticiasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Noticias Importantes')),
        backgroundColor: Colors.purple,
      ),
        drawer:appDrawer(context),
        body: ListView.builder(
        itemCount: noticiasList.length,
        itemBuilder: (context, index) {
          final noticia = noticiasList[index];
          return Card(
            margin: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                noticia.image, 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    noticia.title,
                    style: const TextStyle(
                     fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(noticia.body),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
      
      
  