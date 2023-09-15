import 'dart:io';

import '../Datos/canciones.dart';

List<Map<String, dynamic>> jugadoresRegistrados = [];

List<Cancion> canciones = [];

dynamic preguntador(String? pregunta, int type) {
  print(pregunta);
  String? dato = stdin.readLineSync();

  switch (type) {
    case 1: //Espera un int
      try {
        return int.parse(dato ?? '0');
      } on FormatException {
        return 0;
      }
    case 2: //Espera un double
      return double.parse(dato ?? '0.0');
    case 3: //Espera un String de nombre
      return dato ?? 'NoName';
    case 4: //Espera un String de siglo
      return dato ?? 'XVIII';
    default: //Espera un String cualquiera
      return dato ?? '';
  }
}