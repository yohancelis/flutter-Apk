import 'package:flutter/material.dart';
import 'package:list_views/menu.dart';

void main() {
  runApp(const EjemploListViews());
}

class EjemploListViews extends StatelessWidget {
  const EjemploListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Menu(),
      //Ocultar Barra del debug
      debugShowCheckedModeBanner: false,
    );
  }
}