import 'package:flutter/material.dart';

class Servicios extends StatelessWidget {
  const Servicios({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Center(child: Text('Servicios')),
      backgroundColor: Colors.red,

    ),
    body: ListView(
      children: [
        _buildServiceCard('Corte', 'imagenes/cor.png', 'Corte sencillo'),
        _buildServiceCard('Barba', 'imagenes/bar.png', 'Corte de barba sencillo'),
        _buildServiceCard('Cejas', 'imagenes/ce.png', 'Depilacion de las cejas sencillas'),
        _buildServiceCard('Corte y barba', 'imagenes/e.png', 'Experiencia absoluta'),
        _buildServiceCard('Corte y ceja', 'imagenes/a.png', 'Buena opcion'),
        _buildServiceCard('Barba y ceja', 'imagenes/s.png', 'Sin descripcion'),
        _buildServiceCard('Corte, barba y cejas', 'imagenes/cor.png', 'Expectacular'),
      ],
    ),
  );
}
}
Widget _buildServiceCard(String title, String imagePath, String description) {
  return Card(
    margin: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        ListTile(
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          subtitle: Text(
            description,
            textAlign: TextAlign.center, // Centra el texto de la descripción
          ),       
           ),
      ],
    ),
  );
}


