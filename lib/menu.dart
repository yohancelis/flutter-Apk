import 'package:flutter/material.dart';
import 'package:list_views/agendamiento.dart';
import 'package:list_views/barberos.dart';
import 'package:list_views/clientes.dart';
import 'package:list_views/productos.dart';
import 'package:list_views/servicios.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THE WARRIOR BARBER SHOP', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: (20)),),
        backgroundColor: Colors.red,
        ),
        body: ListView(
          children:  [
            const ListTile(
              leading: Icon(Icons.home, color: Colors.green,),
              title: Text('The Warrior Barber Shop'),
              subtitle: Text('the warrior barber shop es una barberia en la cual manejamos muchos estilos de cortes y con una amplia experiencia al cliente'),
              trailing: Icon(Icons.arrow_forward_sharp),
            ),

            ListTile(
              leading: const Icon(Icons.production_quantity_limits_sharp, color: Color.fromARGB(255, 42, 165, 226),),
              title: const Text('Productos'),
              subtitle: const Text('Ver Productos'),
              trailing: const Icon(Icons.arrow_forward_sharp),
              onTap: (){
                final route = MaterialPageRoute(
                  builder: (context) => const Productos() );
                  Navigator.push(context, route);
              },
            ),

             ListTile(
              leading: const Icon(Icons.supervised_user_circle_outlined, color: Color.fromARGB(255, 42, 165, 226),),
              title: const Text('Servicios'),
              subtitle: const Text('Ver Servicios'),
              trailing: const Icon(Icons.arrow_forward_sharp),
              onTap: (){
                final route = MaterialPageRoute(
                  builder: (context) => const Servicios() );
                  Navigator.push(context, route);
              },
            ),

             ListTile(
              leading: const Icon(Icons.person_2_rounded, color: Color.fromARGB(255, 42, 165, 226),),
              title: const Text('Clientes'),
              subtitle: const Text('Clientes Registrados'),
              trailing: const Icon(Icons.arrow_forward_sharp),
              onTap: (){
                final route = MaterialPageRoute(
                  builder: (context) =>  Clientes() );
                  Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: const Icon(Icons.insert_invitation_rounded, color: Color.fromARGB(255, 42, 165, 226),),
              title: const Text('Agendamiento'),
              subtitle: const Text('Citas Agendadas'),
              trailing: const Icon(Icons.arrow_forward_sharp),
              onTap: (){
                final route = MaterialPageRoute(
                  builder: (context) =>  AgendamientoCitas() );
                  Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Color.fromARGB(255, 42, 165, 226)),
              title: const Text('Barberos'),
              subtitle: const Text('Barberos'),
              trailing: const Icon(Icons.arrow_forward_sharp),
              onTap: (){
                final route = MaterialPageRoute(
                  builder: (context) =>  Barberos() );
                  Navigator.push(context, route);
              },
            )

            
          ],
        ),
    );
  }
}

