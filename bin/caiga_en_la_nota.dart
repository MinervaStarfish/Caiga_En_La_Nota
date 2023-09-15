import 'dart:io';

import 'Datos/canciones.dart';
import 'Operaciones/funciones.dart';
import 'Operaciones/util.dart';

void main(List<String> arguments) {
  int? opcion1;
  int? opcion2;
  int? opcion3;

  do {
    print("=== Menú 1 ===");
    print("Ingrese su elección:");
    opcion1 =
        preguntador("1. Jugar. 2. Agregar canción. 3. Ver datos. 4. Salir", 1);

    switch (opcion1) {
      case 1: // Case para jugar
        do {
          print("=== Menú 2 ===");
          print("Ingrese su elección:");
          opcion2 = preguntador(
              "1. Agregar jugador. 2. Elegir jugador. 3. Ir al menú anterior.",
              1);

          switch (opcion2) {
            case 1: // Case para agregar jugador
              final Map<String, dynamic> user = {
                'Nombre': preguntador('¿Cuál es su nombre?', 3),
                'Edad': preguntador('¿Cual es su edad?', 1),
                'Pseudónimo': preguntador('¿Cuál es su pseudónimo?', 3),
                'Cantidad de canciones completadas': 0,
                'Total palabras acertadas': 0,
                'Total palabras falladas': 0,
                'Total de puntos': 0,
              };

              jugadoresRegistrados.add(user);
              jugar();

              break;

            case 2: // Case para elegir jugador
              if (jugadoresRegistrados.isEmpty) {
                print("No hay jugadores registrados.");
                break;
              }

              print("Jugadores registrados:");
              for (int i = 0; i < jugadoresRegistrados.length; i++) {
                print("[$i] ${jugadoresRegistrados[i]['Nombre']}");
              }

              int indiceJugador =
                  preguntador('Seleccione el jugador (Ingrese el número):', 1);

              if (indiceJugador >= 0 &&
                  indiceJugador < jugadoresRegistrados.length) {
                final Map<String, dynamic> jugadorElegido =
                    jugadoresRegistrados[indiceJugador];
                jugar();
              } else {
                print("Selección de jugador inválida.");
              }

              break;

            default:
              3;
          }
        } while (opcion2 != 3);
        break;

      case 2: // Case para agregar canción
        print('Ingrese los detalles de la canción:');
        print("TEN EN CUENTA: Cada párrafo debe tener doble salto de línea.");
        String title = preguntador('Título:', 3);
        String author = preguntador('Autor:', 3);
        String genre = preguntador('Género:', 3);
        String lyrics = preguntador('Letra:', 3);
        String url = preguntador('URL:', 3);

        Cancion nuevaCancion = Cancion(
          title: title,
          author: author,
          genre: genre,
          lyrics: lyrics,
          url: url,
        );

        canciones.add(nuevaCancion);
        print('La canción ha sido agregada correctamente.');
        break;

      case 3: // Case para ver datos de jugadores
        break;

      default:
        4;
    }
  } while (opcion1 != 4);
  exit(0);
}
