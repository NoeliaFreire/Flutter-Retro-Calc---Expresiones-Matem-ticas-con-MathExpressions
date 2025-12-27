import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colores del visualizador
Color colorFondo = const Color(0xFF242424); //Color oscuro fondo
Color colorTextoVisualizador = Color(0xFFd8d0c1); // Texto principal claro
Color colorTextoPrevio = Color(0xFFaaa9a3);     // Texto gris para la operación

class Visualizador extends StatelessWidget {
  // Texto que muestra la operación principal
  final String entrada;
  //Texto que muestra el resultado
  final String resultado;

//Constructor
  const Visualizador({
    super.key,
    required this.entrada,
    required this.resultado});

  @override
  Widget build(BuildContext context) {
    return Container(
      //Estructura del contenedor
      margin: const EdgeInsets.only(top: 20,bottom: 10,left: 15,right: 15), //Espacio interior
      padding: const EdgeInsets.all(15), //Espacio exterior
      width: double.infinity, //Ancho
      //Estilos del visualizador
      decoration: BoxDecoration(
        color: colorFondo,
        //Bordes redondeados
        borderRadius: BorderRadius.circular(15),
        //Sombra del contenedor
        boxShadow: [BoxShadow(
          color: Colors.black.withAlpha(51),
          blurRadius: 5,
          offset: Offset(0, 3) //Define hacia que posición se situa la sombra
        )]
      ),
      //Columna donde se organizan los textos
      child: Column(
        //Alineación vertical al fondo del contenedor
        mainAxisAlignment: MainAxisAlignment.end,
        //Alineación horizontal por la derecha
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //Linea de la operación 
          Text(entrada,
          style: GoogleFonts.lato(
            fontSize: 32,
            color: colorTextoPrevio,
          ),
          //Número máximo de lineas en la fila
          maxLines: 1,
          //Modifica el texto con puntos suspensivos si es mas largo que el contenedor
          overflow: TextOverflow.ellipsis,),
          const SizedBox(height: 5),
          //Linea del resultado
          Text(resultado,
          style: GoogleFonts.lato(
            fontSize: 54,
            color: colorTextoVisualizador,
            fontWeight: FontWeight.w300
          ),
          //Número máximo de lineas en la fila
          maxLines: 1,
          //Modifica el texto con puntos suspensivos si es mas largo que el contenedor
          overflow: TextOverflow.ellipsis,)
        ],
      ),
    );
  }
}