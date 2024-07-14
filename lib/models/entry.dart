class Entry {
  String start;
  String end;
  String day;

  Entry({required this.start, required this.end, required this.day});

  @override
  String toString() {
    return '$start,$end,$day';
  }

  static Entry fromString(String string) {
    List<String> parts = string.split(',');
    return Entry(
      start: parts[0],
      end: parts[1],
      day: parts[2],
    );
  }
}
