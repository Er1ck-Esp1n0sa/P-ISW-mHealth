import 'package:flutter/material.dart';

class CustomButtonWithText extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String label;
  final VoidCallback onPressed;
  final double buttonWidth;
  final double buttonHeight;

  const CustomButtonWithText({
    super.key,
    required this.iconData,
    required this.color,
    required this.label,
    required this.onPressed,
    this.buttonWidth = 150.0,
    this.buttonHeight = 150.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Cambia el color de fondo aquí
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        minimumSize: Size(buttonWidth, buttonHeight),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 64,
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mHealth',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "¿Has checado\n     tus senos\n últimamente?",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF697A5), // Color del texto #F697A5
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Botones personalizados con colores de fondo personalizados
              CustomButtonWithText(
                iconData: Icons.star,
                color: const Color(0xFF9E2050), // Fondo de color #9E2050
                label: "¿Cuanto sabes del\n cancer de mama?",
                onPressed: () {
                  // Agrega la lógica que deseas ejecutar cuando se presiona el botón aquí
                },
                buttonWidth: 150.0,
                buttonHeight: 150.0,
              ),
              CustomButtonWithText(
                iconData: Icons.local_cafe,
                color: const Color(0xFFFF458C), // Fondo de color #FF458C
                label: "Calendari de \n autoexploracio",
                onPressed: () {
                  // Agrega la lógica que deseas ejecutar cuando se presiona el botón aquí
                },
                buttonWidth: 150.0,
                buttonHeight: 150.0,
              ),
              CustomButtonWithText(
                iconData: Icons.favorite,
                color: const Color(0xFFFFADCD), // Fondo de color #FFADCD
                label: "Aprende mas",
                onPressed: () {
                  // Agrega la lógica que deseas ejecutar cuando se presiona el botón aquí
                },
              ),
              CustomButtonWithText(
                iconData: Icons.favorite,
                color: const Color(0xFFFFADCD), // Fondo de color #FFADCD
                label: "Sobre ti",
                onPressed: () {
                  // Agrega la lógica que deseas ejecutar cuando se presiona el botón aquí
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
