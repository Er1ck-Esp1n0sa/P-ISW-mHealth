class MenstruationData {
  int id; // ID único para cada registro
  DateTime startDate;
  int duration; // Duración en días

  MenstruationData({required this.id, required this.startDate, required this.duration});

  // Método para convertir el objeto a un mapa
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'startDate': startDate.toIso8601String(),
      'duration': duration,
    };
  }
}
