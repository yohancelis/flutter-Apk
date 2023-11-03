import 'package:flutter/material.dart';

class Agenda {
  final String nombreCliente;
  final String nombreBarbero;
  final String fechaAgenda;
  final String tipoCorte;
  final double valor;

  Agenda({
    required this.nombreCliente,
    required this.nombreBarbero,
    required this.fechaAgenda,
    required this.tipoCorte,
    required this.valor,
  });
}

class AgendamientoCitas extends StatelessWidget {
  final List<Agenda> listaCitas = [
    Agenda(
      nombreCliente: 'David',
      nombreBarbero: 'Julian',
      fechaAgenda: '2023-11-05',
      tipoCorte: 'Corte de Pelo',
      valor: 18.000,
    ),
    Agenda(
      nombreCliente: 'Juan',
      nombreBarbero: 'Braulio',
      fechaAgenda: '2023-11-07',
      tipoCorte: 'Corte de Barba',
      valor: 8.000,
    ),
    Agenda(
      nombreCliente: 'Luisa',
      nombreBarbero: 'David',
      fechaAgenda: '2023-11-10',
      tipoCorte: 'Corte de cejas',
      valor: 15.000,
    ),
    Agenda(
      nombreCliente: 'Martin',
      nombreBarbero: 'Brayan',
      fechaAgenda: '2023-11-15',
      tipoCorte: 'Corte de barba y pelo',
      valor: 20.000,
    ),
  ];

   AgendamientoCitas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Agendamiento de Citas'),),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: listaCitas.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cliente: ${listaCitas[index].nombreCliente}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text('Barbero: ${listaCitas[index].nombreBarbero}'),
                  Text('Fecha: ${listaCitas[index].fechaAgenda}'),
                  Text('Tipo de Corte: ${listaCitas[index].tipoCorte}'),
                  Text('Valor: \$${listaCitas[index].valor.toStringAsFixed(2)}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
