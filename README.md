Flutter Calculator App 📱
Una calculadora moderna y funcional construida con Flutter, diseñada con una arquitectura modular y una interfaz estética que utiliza tipografías personalizadas de Google Fonts.

🚀 Características
Evaluación de Expresiones: Utiliza la librería math_expressions para procesar operaciones matemáticas complejas.

Componentes Reutilizables: Estructura basada en widgets personalizados como Boton y Visualizador para un código más limpio y mantenible.

Función ANS: Permite reutilizar el último resultado obtenido en una nueva operación.

Interfaz Adaptable: Los botones se distribuyen dinámicamente usando Expanded y Flex, incluyendo soporte para botones de doble ancho (como el "0").

Manejo de Errores: Sistema robusto que muestra un mensaje de "Error" en pantalla ante expresiones matemáticas inválidas, evitando el cierre de la aplicación.

Estética Personalizada: Integración de fuentes especializadas como 'Orbitron' para los botones y 'Lato' para el visualizador.

🛠️ Estructura del Proyecto
El proyecto se divide en componentes lógicos para facilitar su escalabilidad:

pantalla_calculadora.dart: Gestiona el estado de la aplicación, la lógica de los botones y el cálculo de resultados.

visualizador.dart: Widget encargado de mostrar la operación actual (entrada) y el resultado calculado.

boton.dart: Widget altamente configurable que define el estilo, color, tamaño de letra y comportamiento de cada tecla.

main.dart: Punto de entrada de la aplicación que configura el tema base.

⚙️ Lógica de Operación
El núcleo de la aplicación transforma la entrada del usuario para que sea compatible con el motor de evaluación:

Convierte el símbolo visual 'x' en el operador matemático '*'.

Calcula porcentajes dividiendo automáticamente por 100.

Limpia resultados decimales innecesarios (ej: transforma 25.0 en 25).

📸 Vista Previa del Diseño
