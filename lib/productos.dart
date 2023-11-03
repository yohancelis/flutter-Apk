import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Column( 
      children: [
         AppBar(
        title: const Center(child: Text('Categoria De Insumos', style: TextStyle(color: Colors.black, fontSize: (20)),)),
        backgroundColor: Colors.red,
        ),     
           
        DataTable(
          columns: const <DataColumn> [
          DataColumn (label: Text('Cantidad', style: TextStyle(color: Colors.black, fontSize: (20)),)),
          DataColumn (label: Text('Insumo', style: TextStyle(color: Colors.black, fontSize: (20)),)),
          DataColumn (label: Text('Stokmin', style: TextStyle(color: Colors.black, fontSize: (20)),)),
          DataColumn (label: Text('Stokmax', style: TextStyle(color: Colors.black, fontSize: (20)),)),
          DataColumn (label: Text('Precio', style: TextStyle(color: Colors.black, fontSize: (20)),)),

        ],

        rows: const <DataRow>[
          DataRow(cells: <DataCell>[
          DataCell(Text('23')),  
          DataCell(Text('Cuchillas')),
          DataCell(Text('1')),
          DataCell(Text('10')),
          DataCell(Text('25000')),

          ]),
          DataRow(cells: <DataCell>[
          DataCell(Text('2')),  
          DataCell(Text('Gomina')),
          DataCell(Text('1')),
          DataCell(Text('10')),
          DataCell(Text('15000')),

          ]),
          DataRow(cells: <DataCell>[
          DataCell(Text('4')),  
          DataCell(Text('Talco')),
          DataCell(Text('1')),
          DataCell(Text('10')),
          DataCell(Text('20000')),

          ]),
          DataRow(cells: <DataCell>[
          DataCell(Text('50')),  
          DataCell(Text('Cuellero')),
          DataCell(Text('1')),
          DataCell(Text('100')),
          DataCell(Text('30000')),

          ]),
          DataRow(cells: <DataCell>[
          DataCell(Text('4')),  
          DataCell(Text('Tijeras')),
          DataCell(Text('1')),
          DataCell(Text('10')),
          DataCell(Text('10000')),

          ]),
        ], 
        ),
      ],
    );
  }
}
