class Datos{
  String? nombre;
  String? correo;
  int? telefono;
  
  Datos(Map map){
    this.nombre = map['nombre'];
    this.correo = map['correo'];
    this.telefono = map['telefono'];
  }
}