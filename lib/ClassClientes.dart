class Cliente {
  String nombre;
  String apellido;
  String edad;
  String telefono;

  Cliente(
      {required this.nombre,
      required this.apellido,
      required this.edad,
      required this.telefono});

  factory Cliente.fromJson(Map<String, dynamic> json) {
    return Cliente(
      nombre: json['nombre'],
      apellido: json['apellido'],
      edad: json['edad'],
      telefono: json['telefono'],
    );
  }
}
