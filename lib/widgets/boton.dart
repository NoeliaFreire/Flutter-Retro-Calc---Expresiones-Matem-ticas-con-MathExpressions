import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Boton extends StatelessWidget {
  //Texto  del botón
  final String texto;
  //Tamaño de la letra del botón, para los textos demasiado largos
  final double tamanoLetra;
  //Colores de Fondo y de la tipografía
  final Color colorFondo;
  final Color colorTexto;
  //Variable booleana para evaluar si un boton ocupa todo el espacio disponible de su Row() o Colum() padre
  final bool esDoble;
  //Callback para la función del botón al presionar
  final Function(String) onPressed;

  //Constructor
  const Boton({
    super.key,
    required this.texto,
    required this.colorFondo,
    required this.colorTexto,
    required this.onPressed,
    required this.tamanoLetra,
    this.esDoble = false
    });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //Sirve para distribuir el espacio, si esDoble es true ocupa 2 partes del espacio disponible y si es false ocupa solo una parte del espacio disponible
    flex: esDoble? 2:1,
    //Crear espacio entre los botones
    child: Padding(
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        //Función callback. Recibe el texto del botón como atributo para pasarselo al visualizador
        onPressed: () => onPressed(texto),
        //Estilos del botón
        style: ElevatedButton.styleFrom(
          //Color de fondo
          backgroundColor: colorFondo,
          //Padding entre el contenido y el borde del botón
          padding: EdgeInsets.all(22),
          //Tamaño minimo de los botones
          minimumSize: const Size(0, 70),
          //Tamaño de la sombra del botón
          elevation: 5,
          //Define la forma del botón según la variable esDoble. Al botón que ocupa el doble se le establecen bordes mas redondeados
          shape: esDoble ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)
          ) : RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ),
          //Texto del botón
        child: Text(
          texto, 
          //Estilos y fuente del texto del botón
          style: GoogleFonts.getFont(
            'Orbitron',
            fontSize: tamanoLetra,
            color: colorTexto,)
          )
      ),)
    );
  }
}