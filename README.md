<<<<<<< HEAD
# calculadora1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
=======
# Flutter Calculator App 📱

Una calculadora moderna y funcional construida con **Flutter**, diseñada con una arquitectura modular y una interfaz estética que utiliza tipografías personalizadas de Google Fonts.

## 🚀 Características

* **Evaluación de Expresiones**: Utiliza la librería `math_expressions` para procesar operaciones matemáticas complejas.
* **Componentes Reutilizables**: Estructura basada en widgets personalizados como `Boton` y `Visualizador` para un código más limpio.
* **Función ANS**: Permite reutilizar el último resultado obtenido en una nueva operación si este es válido.
* **Interfaz Adaptable**: Los botones se distribuyen dinámicamente usando `Expanded`, incluyendo soporte para botones de doble ancho como el "0".
* **Manejo de Errores**: Sistema robusto con bloque `try-catch` que muestra "Error" ante expresiones inválidas.
* **Estética Personalizada**: Integración de fuentes como 'Orbitron' para botones y 'Lato' para el visualizador.

## 🛠️ Estructura del Proyecto

El proyecto se divide en componentes lógicos para facilitar su mantenimiento:

* **`pantalla_calculadora.dart`**: Gestiona el estado (`entrada`, `resultado`) y la lógica de los botones.
* **`visualizador.dart`**: Widget encargado de mostrar la operación y el resultado con estilos diferenciados.
* **`boton.dart`**: Widget configurable que define el estilo, color y el callback `onPressed`.
* **`main.dart`**: Punto de entrada que configura la aplicación y quita el banner de modo depuración.

## ⚙️ Lógica de Operación

La aplicación transforma la entrada del usuario para que sea compatible con el motor de evaluación:
* Convierte el símbolo visual **'x'** en el operador matemático **'*'**.
* Los porcentajes se calculan dividiendo automáticamente por **100**.
* Limpia resultados decimales innecesarios, eliminando el `.0` al final de los números enteros.

---
Desarrollado con ❤️ usando Flutter y Dart.
>>>>>>> 1ecbec2f5676b877698c1834639af684ee0b77a3
