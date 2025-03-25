import 'package:flutter/material.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Выбор'), backgroundColor: Color.fromARGB(255, 157, 28, 221),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'Да'),
              child: const Text('Да'),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 157, 28, 221),
     ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'Нет'),
              child: const Text('Нет'),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 157, 28, 221),
     ),
            ),
          ],
        ),
      ),
    );
  }
}