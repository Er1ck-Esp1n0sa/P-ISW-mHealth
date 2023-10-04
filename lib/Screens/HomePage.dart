// ignore_for_file: unused_import, file_names
import 'package:flutter/material.dart';
import 'package:nhealth/Components/*button_widget.dart';
import 'package:nhealth/Screens/PeriodPage.dart';

class UserModel {
  final String name;

  UserModel(this.name);
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Definir el color personalizado
    Color customColor1 = const Color(0xFF9E2050);
    Color customColor2 = const Color(0xFFFF458C);
    Color customColor3 = const Color(0xFFFFADCD);
    Color customColor4 = const Color(0xFF9E2050);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mHealth',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('mHealth'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '¿Has checado tus senos ultimamante?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),

              ElevatedButton(
                onPressed: () {
                  // Acción al hacer clic en el primer botón
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: customColor1, // Cambiar el color del botón
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.asset('assets/icons/more.png',
                          height: 50.0, width: 50.0),
                    ),
                    const Text(
                      '¿Cuanto sabes del \n cancer de mama?',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16.0), // Espaciado entre los botones
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Period()), // Reemplaza PeriodPage con el nombre correcto
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: customColor2, // Cambiar el color del botón
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.asset('assets/icons/date.png',
                          height: 50.0, width: 50.0),
                    ),
                    const Text(
                      'Calendario de \n autoexploracion',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16.0), // Espaciado entre los botones
              ElevatedButton(
                onPressed: () {
                  // Acción al hacer clic en el tercer botón
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: customColor3, // Cambiar el color del botón
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.asset('assets/icons/check.png',
                          height: 50.0, width: 50.0),
                    ),
                    const Text(
                      'Aprende mas',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16.0), // Espaciado entre los botones
              ElevatedButton(
                onPressed: () {
                  // Acción al hacer clic en el cuarto botón
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: customColor4,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.asset('assets/icons/date.png',
                          height: 50.0, width: 50.0),
                    ),
                    const Text(
                      'Texto del botón 4',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
