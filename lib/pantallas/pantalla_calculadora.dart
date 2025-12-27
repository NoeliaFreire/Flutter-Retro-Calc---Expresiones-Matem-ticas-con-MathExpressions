import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:calculadora1/widgets/visualizador.dart';
import 'package:calculadora1/widgets/boton.dart';

class PantallaCalculadora extends StatefulWidget {
  const PantallaCalculadora({super.key});

  @override
  State<PantallaCalculadora> createState() => _PantallaCalculadoraState();
}

class _PantallaCalculadoraState extends State<PantallaCalculadora> {
  //Atributo del texto de la ecuación
  String entrada = "";
  //Atributo del texto del resultado de la ecuación
  String resultado = "";

  //Callback para los botones
  void botonPressed(String textoBoton) {
    setState(() {
      //Validar el texto del botón
      switch (textoBoton) {
        //La librería usada para las expresiones mátematicas reconoce el simbolo * como multiplicación, por lo que es necesario combertir el texto del botón
        case 'x':
          entrada += '*';
          break;
        //Si el texto es 'AC' se establece la entrada y resultado  en blanco
        case 'AC':
          entrada = "";
          resultado = "";
          break;
        //Toma el resultado para utilizarlo en otra ecuación
        case 'ANS':
          if (resultado.isNotEmpty && resultado != "Error") {
            entrada =resultado;}
          break;
        //Calcula el resultado
        case '=':
          calcularResultado();
          break;
        //La libreria no reconoce el simbolo '%', por lo que se convierte a un valor reconocible
        case '%':
          entrada += '/100';
          break;
        //El resto de valores se concatenan al texto de la entrada
        default:
          if (entrada == "0" && textoBoton != ".") {
            entrada = textoBoton;
          } else {
            entrada += textoBoton;
          }
          break;
      }
    });
  }

  //Método que calcula el resultado de la expresión matemática
  void calcularResultado() {
    try {
      //El parser toma la entrada en formato texto y la convierte a una expresion lista para evaluar
      Parser p = Parser();
      Expression exp = p.parse(entrada);
      //Evalua la expresión y devuelve el resultado
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      setState(() {
        //Convertir el resultado(double) a texto(String)
        resultado = eval.toString();
        //Eliminar los decimales si son 0
        if (resultado.endsWith(".0")) {
          resultado = resultado.substring(0, resultado.length - 2);
        }
      });
    } catch (e) {
      //En caso de algún error muestra el mensaje de Error
      setState(() {
        resultado = "Error";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFd8d0c1 ),
      body: Column(
        children: [
          //Espacio del visualizador
          Expanded(
            child: Visualizador(entrada: entrada, resultado: resultado),
          ),
          //Espacio para los botones, en cuadricula usando Column() y Row()
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Column(
              children: [
                //FILA 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Boton(texto: 'AC', colorFondo: const Color(0xFFaaa9a3), colorTexto: Colors.black,tamanoLetra: 26, onPressed: botonPressed),
                    Boton(texto: 'ANS', colorFondo: const Color(0xFFaaa9a3), colorTexto: Colors.black,tamanoLetra: 18, onPressed: botonPressed),
                    Boton(texto: '%', colorFondo: const Color(0xFFaaa9a3), colorTexto: Colors.black,tamanoLetra: 26, onPressed: botonPressed),
                    Boton(texto: '/', colorFondo: const Color(0xFF5b87a1), colorTexto: Colors.black,tamanoLetra: 38, onPressed: botonPressed),
                  ],
                ),
                //FILA 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Boton(texto: '7', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 38, onPressed: botonPressed),
                    Boton(texto: '8', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 38, onPressed: botonPressed),
                    Boton(texto: '9', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 38, onPressed: botonPressed),
                    Boton(texto: 'x', colorFondo: const Color(0xFF5b87a1), colorTexto: Colors.black,tamanoLetra: 38, onPressed: botonPressed),
                  ],
                ),
                //FILA 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Boton(texto: '4', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 42, onPressed: botonPressed),
                    Boton(texto: '5', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 42, onPressed: botonPressed),
                    Boton(texto: '6', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 42, onPressed: botonPressed),
                    Boton(texto: '-', colorFondo: const Color(0xFF5b87a1), colorTexto: Colors.black,tamanoLetra: 42, onPressed: botonPressed),
                  ],
                ),
                //FILA 4
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Boton(texto: '1', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 42, onPressed: botonPressed),
                    Boton(texto: '2', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 42, onPressed: botonPressed),
                    Boton(texto: '3', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 42, onPressed: botonPressed),
                    Boton(texto: '+', colorFondo: const Color(0xFF5b87a1), colorTexto: Colors.black,tamanoLetra: 42, onPressed: botonPressed),
                  ],
                ),
                //FILA 5
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Boton(texto: '0', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 38, onPressed: botonPressed, esDoble: true),
                    Boton(texto: '.', colorFondo: const Color(0xFFde5c4e), colorTexto: Colors.black,tamanoLetra: 38, onPressed: botonPressed),
                    Boton(texto: '=', colorFondo: const Color(0xFF5b87a1), colorTexto: Colors.black,tamanoLetra: 38, onPressed: botonPressed),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}