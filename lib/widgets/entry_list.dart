import 'package:flutter/material.dart';
import 'package:mytime/models/entry.dart';

class EntryList extends StatelessWidget {
  final List<Entry> entries;

  const EntryList({required this.entries, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: entries.length,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Início: ${entries[index].start}'),
            Text(
                'Fim: ${entries[index].end == entries[index].start ? 'loading..' : entries[index].end}')
          ],
        );
      },
    );
  }
}
