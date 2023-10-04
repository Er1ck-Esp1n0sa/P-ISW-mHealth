// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MenstruationSettingsScreen extends StatefulWidget {
  @override
  _MenstruationSettingsScreenState createState() =>
      _MenstruationSettingsScreenState();
}

class _MenstruationSettingsScreenState
    extends State<MenstruationSettingsScreen> {
  DateTime selectedDate = DateTime.now(); // Fecha seleccionada por el usuario
  int menstruationDuration = 0; // Duración del período, inicialmente 0 días

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configuración de Menstruación"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Fecha de inicio de menstruación:",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Mostrar un DatePicker y actualizar la fecha seleccionada
                showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                ).then((date) {
                  if (date != null && date != selectedDate) {
                    setState(() {
                      selectedDate = date;
                    });
                  }
                });
              },
              child: Text(
                "${selectedDate.toLocal()}"
                    .split(' ')[0], // Mostrar la fecha seleccionada
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Duración del período (en días):",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number, // Teclado numérico
              onChanged: (value) {
                // Actualizar la duración del período cuando el usuario ingrese un valor
                setState(() {
                  menstruationDuration = int.tryParse(value) ?? 0;
                });
              },
              decoration: const InputDecoration(
                hintText: "Ingresa la duración",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
