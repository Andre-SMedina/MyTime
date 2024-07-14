import 'package:intl/intl.dart';
import 'package:mytime/models/entry.dart';
import 'package:mytime/services/storage_service.dart';

class MultiService {
  StorageService storage = StorageService();

  int calculateTotalSeconds(List<Entry> entries, int totalSeconds) {
    int total = 0; // Inicializa uma variável para armazenar o total de segundos

    for (var entry in entries) {
      String? start = entry.start;
      String? end = entry.end;

      // Converte as strings de início e fim em objetos DateTime
      DateTime startTime = DateFormat('kk:mm:ss').parse(start);
      DateTime endTime = DateFormat('kk:mm:ss').parse(end);
      // Calcula a diferença entre o tempo de início e fim
      Duration difference = endTime.difference(startTime);
      // Adiciona a diferença em segundos ao total
      total += difference.inSeconds;
    }

    // Atualiza o estado para armazenar o total de segundos calculado
    return totalSeconds = total;
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}
