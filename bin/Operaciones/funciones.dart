import 'dart:io';
import 'dart:math';

import '../Datos/canciones.dart';
import 'util.dart';

// Función del juego
void jugar() {
  int? opcion;
  do {
    print("\nIngresa la dificultad deseada:");
    opcion = preguntador(
        " 1. Dicicultad Facil.\n 2. Dificultad Media.\n 3. Dicultad Dicifil.\n 4. Salir.",
        1);
    if (opcion != 4) {
      print("\nElige la canción que deseas jugar:");
      int cancionNumero = preguntador(
          " 1. Mil Horas.\n 2. Ciega Sordomuda.\n 3. Fuentes de Ortiz.\n 4. Minero.\n 5. Lo que siento.\n 6. Never Gonna Give You Up.",
          1);
      Map<String, dynamic> cancion = obtenerCancion(cancionNumero);

// Modos de dificultad del juego
      switch (opcion) {
        case 1: // Dificultad 1 = 1 palabra por verso
          int numPalabrasOcultas = 1;
          completarLetra(cancion, numPalabrasOcultas);
          break;

        case 2: // Dificultad 2 = 2 palabra por verso
          int numPalabrasOcultas = 2;
          completarLetra(cancion, numPalabrasOcultas);
          break;

        case 3: // Dificultad 3 = 3 palabra por verso
          int numPalabrasOcultas = 3;
          completarLetra(cancion, numPalabrasOcultas);
          break;

        default:
          4;
      }
    } else {
      exit(0);
    }
  } while (opcion != 4);
  exit(0);
}


// Función para elegir una cancion
Map<String, dynamic> obtenerCancion(int numeroCancion) {
  switch (numeroCancion) {
    case 1:
      return milHoras;
    case 2:
      return ciegaSordomuda;
    case 3:
      return fuentesDeOrtiz;
    case 4:
      return minero;
    case 5:
      return loQueSiento;
    case 6:
      return nerverGonnaGiveYouUp;
    default:
      print("Por favor elija una canción");
      return {}; // Mapa vacío en caso de selección inválida
  }
}

// Función para esconder las palabras
void completarLetra(
    Map<String, dynamic> cancionElegida, int numPalabrasOcultas) {
  Cancion cancion = Cancion(
    title: cancionElegida['title'],
    author: cancionElegida['author'],
    genre: cancionElegida['genre'],
    lyrics: cancionElegida['lyrics'],
    url: cancionElegida['url'],
  );

  List<String> versos = cancion.lyricsSplitted;
  Random random = Random();
  List<String> palabrasOcultas = [];

  // Este for es para dividir el verso por palabras
  for (int i = 0; i < versos.length; i++) {
    List<String> palabras = versos[i].trim().split(' ');

    // Este for es para ocultar las palabras y almacenarlas para moestrarlas luego
    for (int j = 0; j < numPalabrasOcultas; j++) {
      int indiceAleatorio = random.nextInt(palabras.length);
      palabrasOcultas.add(palabras[indiceAleatorio]);
      palabras[indiceAleatorio] = '-------';
    }

    versos[i] = palabras.join(' ');
  }

  print('Completa las palabras faltantes en la canción "${cancion.title}":\n');

  // Este for es para que del map solo se imprima la letra de la canción
  for (String verso in versos) {
    print("\n$verso");
  }

  // Llamamos a la función de puntos
  int puntos = calcularPuntos(versos, numPalabrasOcultas);

  print('\n¡Juego terminado!');
  print('Puntos obtenidos: $puntos');
  print('Respuestas correctas: ${palabrasOcultas.join(', ')}');
}

// Función para asignar los puntos obtenidos
int calcularPuntos(List<String> versos, int numPalabrasOcultas) {
  int puntos = 0;

  // Este for es para preguntar por las respuestas y poderlas escribir separadas por comas
  for (int i = 0; i < numPalabrasOcultas; i++) {
    String? respuesta = preguntador(
        '\nIngresa las palabras que faltan separadas por comas:', 3);
    List<String> respuestas =
        respuesta!.split(', ').map((e) => e.trim()).toList();

    // Este for es para recorrer cada respuesta y asigna puntos dependiendo de las palabras acertadas
    for (String palabra in respuestas) {
      if (versos.toString().contains(palabra)) {
        puntos++;
      }
    }
  }

  return puntos;
}
