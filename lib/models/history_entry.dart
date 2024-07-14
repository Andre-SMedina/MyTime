import 'package:mytime/models/entry.dart';

class HistoryEntry {
  String date;
  int totalSeconds;
  List<Entry> entries;

  HistoryEntry({
    required this.date,
    required this.totalSeconds,
    required this.entries,
  });
}
