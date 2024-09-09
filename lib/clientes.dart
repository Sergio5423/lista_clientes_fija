import 'package:flutter/material.dart';
import 'package:mi_primer_app/clientesid.dart';

class Clientes extends StatelessWidget {
  const Clientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Clientes'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: const Text('Nombre'),
            subtitle: const Text('Apellido'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Profile(
                          idCliente: index,
                        )),
              );
            },
          );
        },
      ),
    );
  }
}
