import 'package:flutter/material.dart';

class Cliente {
  final String usuario;
  final String nombre;
  final String documento;
  final String celular;
  final String email;

  Cliente({
    required this.usuario,
    required this.nombre,
    required this.documento,
    required this.celular,
    required this.email,
  });
}

class Clientes extends StatelessWidget {
  final List<Cliente> listaClientes = [
    Cliente(
      usuario: 'Plunder',
      nombre: 'David',
      documento: '123456789',
      celular: '1234567890',
      email: 'plunder@gmail.com',
    ),
    Cliente(
      usuario: 'Azzkeell',
      nombre: 'Juan',
      documento: '987654321',
      celular: '9876543210',
      email: 'juan@gmail.com',
    ),
    Cliente(
      usuario: 'LuisaY',
      nombre: 'Luisa',
      documento: '111222333',
      celular: '1112223330',
      email: 'luisaY@gmail.com',
    ),
    Cliente(
      usuario: 'Tin',
      nombre: 'Martin',
      documento: '444555666',
      celular: '4445556660',
      email: 'martin@gmail.com',
    ),
  ];

   Clientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Clientes Registrados') ,) ,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: listaClientes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nombre: ${listaClientes[index].nombre}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text('Usuario: ${listaClientes[index].usuario}'),
                  Text('Documento: ${listaClientes[index].documento}'),
                  Text('Celular: ${listaClientes[index].celular}'),
                  Text('Email: ${listaClientes[index].email}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
