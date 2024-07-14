import 'package:flutter/material.dart';

Future<bool> confirmClearData(BuildContext context) async {
  return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Confirmação'),
            content: const Text(
                'Você tem certeza que deseja apagar todos os dados?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Confirmar'),
              ),
            ],
          );
        },
      ) ??
      false;
}
