import 'package:flutter/material.dart';
import 'ClassClientes.dart';

class Profile extends StatelessWidget {
  Profile({super.key, required this.idCliente});
  final int idCliente;

  @override
  Widget build(BuildContext context) {
    final cliente = getClienteList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil del Cliente'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(cliente[idCliente].nombre),
          Text(cliente[idCliente].apellido),
          Text(cliente[idCliente].edad),
          Text(cliente[idCliente].telefono)
        ],
      )),
    );
  }
}

List<dynamic> getClienteList() {
  final jsonCliente = [
    {
      "nombre": "Ana",
      "apellido": "García",
      "edad": '28',
      "telefono": "+1 555-123-4567"
    },
    {
      "nombre": "Carlos",
      "apellido": "Martínez",
      "edad": '35',
      "telefono": "+1 555-987-6543"
    },
    {
      "nombre": "María",
      "apellido": "López",
      "edad": '42',
      "telefono": "+1 555-555-5555"
    },
    {
      "nombre": "Pedro",
      "apellido": "Ramírez",
      "edad": '22',
      "telefono": "+1 555-246-8101"
    },
    {
      "nombre": "Laura",
      "apellido": "Fernández",
      "edad": '30',
      "telefono": "+1 555-777-8888"
    }
  ];

  return jsonCliente.map((json) => Cliente.fromJson(json)).toList();
}
