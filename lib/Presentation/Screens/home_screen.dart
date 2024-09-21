import 'package:examen1_programovil/Presentation/Themes/main_theme.dart';
import 'package:examen1_programovil/Presentation/Widgets/drawer_widget.dart';
import 'package:examen1_programovil/Presentation/Widgets/homscreenbody_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Ceutec App', style: textStyle,)
  ),
     
        backgroundColor: Colors.purple,
      ),
        drawer:appDrawer(context),
        body: body,

    );
  }
}