import 'package:flutter/material.dart';
import 'pantallas/pantalla_calculadora.dart';

void main() {
  runApp(const MiCalculadora());
}

class MiCalculadora extends StatelessWidget {
  const MiCalculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Sencilla',
      debugShowCheckedModeBanner: false,
      home: const PantallaCalculadora(),
    );
  }
}