class Datos{
  String? nombre;
  String? correo;
  String? telefono;
  
  Datos(Map map){
    nombre = map['nombre'];
    correo = map['correo'];
    telefono = map['telefono'];
  }
}