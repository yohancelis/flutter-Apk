import 'package:flutter/material.dart';

class Barbero {
  final String usuario;
  final String barbero;
  final String documento;
  final String celular;
  final String email;

  Barbero({
    required this.usuario,
    required this.barbero,
    required this.documento,
    required this.celular,
    required this.email,
  });
}

class Barberos extends StatelessWidget {
  final List<Barbero> listaBarberos = [
    Barbero(
      usuario: 'JulianG',
      barbero: 'Julian',
      documento: '9877653214',
      celular: '3245678765',
      email: 'julian@gmail.com',
    ),
    Barbero(
      usuario: 'BraulioA',
      barbero: 'Braulio',
      documento: '345678456',
      celular: '213456789',
      email: 'braulio@gmail.com',
    ),
    Barbero(
      usuario: 'DavidCm',
      barbero: 'David',
      documento: '12345676543',
      celular: '345423124',
      email: 'david@gmail.com',
    ),
    Barbero(
      usuario: 'BrayanC',
      barbero: 'Brayan',
      documento: '12378654',
      celular: '45675368',
      email: 'brayan@gmail.com',
    ),
  ];

   Barberos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Barbero '),),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: listaBarberos.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Barbero: ${listaBarberos[index].barbero}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text('Usuario: ${listaBarberos[index].usuario}'),
                  Text('Documento: ${listaBarberos[index].documento}'),
                  Text('Celular: ${listaBarberos[index].celular}'),
                  Text('Email: ${listaBarberos[index].email}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
