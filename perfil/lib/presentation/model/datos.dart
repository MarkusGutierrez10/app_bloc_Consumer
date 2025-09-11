class Datos{
  String? nombre;
  String? correo;
  int? telefono;
  
  Datos(Map map){
    nombre = map['nombre'];
    correo = map['correo'];
    telefono = map['telefono'];
  }
}